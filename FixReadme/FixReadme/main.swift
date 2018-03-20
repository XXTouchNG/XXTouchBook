//: Playground - noun: a place where people can play

import Cocoa

class InputHelper {
    static func rawInput() -> String {
        let stdin = FileHandle.standardInput
        return String(data: stdin.availableData, encoding: String.Encoding.utf8)!
    }
}

class Chapter: CustomStringConvertible {
    static let spacesPerLevel = 4
    static let exp = try? NSRegularExpression.init(pattern: "\\[(.*?)\\]\\((.*?)\\)", options: [])
    static let levelFlags = "*--------"
    static let titleFlag = "#"
    
    var prefixString: String
    static func prefixString(with level: Int) -> String {
        return "".padding(toLength: level * Chapter.spacesPerLevel, withPad: " ", startingAt: 0)
    }
    
    var prefixLevel: Int
    var title: String?
    var path: String?
    lazy var content: String? = {
        if let path = path {
            return try? String.init(contentsOfFile: path)
        }
        return nil
    }()
    var exists: Bool {
        get {
            if let path = path {
                return FileManager.default.fileExists(atPath: path)
            }
            return false
        }
    }
    weak var superChapter: Chapter?
    var subChapters: [Chapter] = []
    lazy var contentTitle: String? = {
        if let lines = content?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).components(separatedBy: "\n"), let firstLine = lines.first {
            return firstLine.trimmingCharacters(in: CharacterSet.init(charactersIn: "# \r\n"))
        }
        return nil
    }()
    lazy var titleFlagString: String = {
        return "".padding(toLength: prefixLevel, withPad: Chapter.titleFlag, startingAt: 0)
    }()
    
    init(titleLine: String?, contents: String, level: Int) {
        prefixLevel = level
        prefixString = Chapter.prefixString(with: level)
        if let line = titleLine {
            let match = Chapter.exp?.matches(in: line, options: [], range: NSMakeRange(0, line.count)).first
            if match?.numberOfRanges == 3 {
                if let range = match?.range(at: 1) {
                    let _title = String(line[line.index(line.startIndex, offsetBy: range.location) ..< line.index(line.startIndex, offsetBy: range.location + range.length)]).trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
                    if _title.count > 0 { title = _title }
                }
                if let range = match?.range(at: 2) {
                    let _path = String(line[line.index(line.startIndex, offsetBy: range.location) ..< line.index(line.startIndex, offsetBy: range.location + range.length)]).trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
                    if _path.count > 0 { path = _path }
                }
            }
        }
        let lines = contents.components(separatedBy: "\n")
        var chapContent = ""
        for line in lines.reversed() {
            if line.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).count == 0 {
                continue
            }
            if let range = line.rangeOfCharacter(from: CharacterSet.init(charactersIn: "*-")) {
                if String(line[line.index(line.startIndex, offsetBy: 0) ..< range.lowerBound]) == prefixString {
                    let chap = Chapter.init(titleLine: line, contents: chapContent, level: level + 1)
                    chap.superChapter = self
                    if let path = chap.path {
                        if !chap.exists {
                            print("[Error] Missing chapter: " + path)
                            print("Continue? (y/n) ", terminator: "")
                            let key = InputHelper.rawInput().trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
                            if key.hasPrefix("y") || key.count == 0 {
                                continue
                            } else {
                                exit(0)
                            }
                        }
                        if let content = chap.content, let title1 = chap.title, let title2 = chap.contentTitle {
                            let titleLine = content.components(separatedBy: "\n").first ?? ""
                            var levelCheck = 0
                            while titleLine[titleLine.index(titleLine.startIndex, offsetBy: levelCheck)..<titleLine.index(titleLine.startIndex, offsetBy: levelCheck + 1)] == "#" {
                                levelCheck += 1
                            }
                            if title1 != title2 || levelCheck != chap.prefixLevel {
                                let newTitle2 = title2.replacingOccurrences(of: " (**", with: " \\(**").replacingOccurrences(of: "**)", with: "**\\)")
                                print("[Warning] Title dismatch: " + path)
                                print("\nSUMMARY\n----\n\(title1)\n----\n")
                                print("\nContent\n----\n\(newTitle2)\n----\n")
                                print("Enter a new title: ", terminator: "")
                                var inputString = InputHelper.rawInput().trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
                                if inputString.count == 0 {
                                    inputString = newTitle2
                                }
                                chap.title = inputString
                                var chapArr = chap.content?.components(separatedBy: "\n") ?? []
                                if chapArr.count > 0 {
                                    chapArr.remove(at: 0)
                                    chapArr.insert("\(chap.titleFlagString) \(inputString)", at: 0)
                                }
                                let newContent = chapArr.joined(separator: "\n")
                                if chap.content != newContent {
                                    print("\nOriginal\n----\n\(chap.content ?? "")\n----\n")
                                    print("\nNew\n----\n\(newContent)\n----\n")
                                    print("Override it using text above? (y/n) ", terminator: "")
                                    let key = InputHelper.rawInput().trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
                                    if key.hasPrefix("y") || key.count == 0 {
                                        try? newContent.write(toFile: path, atomically: true, encoding: String.Encoding.utf8)
                                        chap.content = newContent
                                    } else {
                                        continue
                                    }
                                }
                            }
                        }
                        if let path = chap.path {
                            let name = NSString(string: path).lastPathComponent
                            if name == "README.md" && chap.subChapters.count > 0 {
                                let strip = NSString(string: path).deletingLastPathComponent + "/"
                                let readme = chap.readme(with: 0, stripPrefix: strip)
                                if readme != chap.content {
                                    print("[Warning] Readme detected: " + path)
                                    print("\nOriginal\n----\n\(chap.content ?? "")\n----\n")
                                    print("\nNew\n----\n\(readme)\n----\n")
                                    print("Override it using text above? (y/n) ", terminator: "")
                                    let key = InputHelper.rawInput().trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
                                    if key.hasPrefix("y") || key.count == 0 {
                                        try? readme.write(toFile: path, atomically: true, encoding: String.Encoding.utf8)
                                        chap.content = readme
                                    } else {
                                        chapContent = ""
                                        continue
                                    }
                                } else {
                                    print("[Info] Readme detected: " + path + " ... skip")
                                }
                            }
                        }
                        subChapters.insert(chap, at: 0)
                    }
                    chapContent = ""
                } else {
                    chapContent = line + "\n" + chapContent
                }
            }
        }
    }
    
    var description: String {
        let idx = Chapter.levelFlags.index(Chapter.levelFlags.startIndex, offsetBy: prefixLevel)
        var desc = "\(prefixString)\(Chapter.levelFlags[idx]) [\(title ?? "")](\(path ?? ""))\n"
        for chap in subChapters {
            desc += chap.description
        }
        return desc
    }
    
    func readme(with level: Int, stripPrefix: String?) -> String {
        let idx = Chapter.levelFlags.index(Chapter.levelFlags.startIndex, offsetBy: level)
        
        var desc = ""
        
        if level != 0 {
            var newPath: String = path ?? ""
            
            if let strip = stripPrefix {
                if newPath.hasPrefix(strip) {
                    newPath = String(newPath.dropFirst(strip.count))
                }
            }
            
            desc += "\(Chapter.prefixString(with: level - 1))\(Chapter.levelFlags[idx])"
            desc += " "
            desc += "[\(title ?? "")]"
            desc += "(\(newPath))"
        } else {
            desc += "\(titleFlagString) \(title ?? "")\n"
        }
        desc += "\n"
        
        for chap in subChapters {
            desc += chap.readme(with: level + 1, stripPrefix: stripPrefix)
        }
        
        return desc
    }
}

setbuf(__stdoutp, nil);
var contents = try? String.init(contentsOfFile: "SUMMARY.md")
if let contents = contents {
    let chap = Chapter.init(titleLine: "[Summary](SUMMARY.md)", contents: contents, level: 0)
    chap.titleFlagString = "#"
    if let path = chap.path {
        let desc = chap.readme(with: 0, stripPrefix: nil)
        if desc != chap.content {
            print("[Warning] Summary updated: " + path)
            print("\nOriginal\n----\n\(chap.content ?? "")\n----\n")
            print("\nNew\n----\n\(desc)\n----\n")
            print("Override it using text above? (y/n) ", terminator: "")
            let key = InputHelper.rawInput().trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
            if key.hasPrefix("y") || key.count == 0 {
                let newPath = "\(Date.init().timeIntervalSince1970)-\(path)"
                try? desc.write(toFile: newPath, atomically: true, encoding: String.Encoding.utf8)
                print("[Succeed] New summary saved at: \(newPath)")
                chap.content = desc
            }
        }
    }
    exit(0)
} else {
    print("[Fatal] SUMMARY.md not found.")
    exit(-1)
}
