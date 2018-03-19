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
	
	var prefixString: String
	func prefixString(with level: Int) -> String {
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
			return firstLine.trimmingCharacters(in: CharacterSet.init(charactersIn: "# "))
		}
		return nil
	}()
	
	init(titleLine: String?, contents: String, level: Int) {
		prefixLevel = level
		prefixString = "".padding(toLength: level * Chapter.spacesPerLevel, withPad: " ", startingAt: 0)
		if let line = titleLine {
			let match = Chapter.exp?.matches(in: line, options: [], range: NSMakeRange(0, line.count)).first
			if match?.numberOfRanges == 3 {
				if let range = match?.range(at: 1) {
					let _title = String(line[line.index(line.startIndex, offsetBy: range.location) ..< line.index(line.startIndex, offsetBy: range.location + range.length)])
					if _title.count > 0 { title = _title }
				}
				if let range = match?.range(at: 2) {
					let _path = String(line[line.index(line.startIndex, offsetBy: range.location) ..< line.index(line.startIndex, offsetBy: range.location + range.length)])
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
							continue
						} else if let title1 = chap.title, let title2 = chap.contentTitle {
							if title1 != title2 {
								print("[Warning] Title dismatch: " + path + " | " + title1 + ", " + title2)
								print("Enter new title: ", terminator: "")
								let inputString = InputHelper.rawInput().trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
								title = inputString
							}
						}
						if let path = chap.path {
							let name = NSString(string: path).lastPathComponent
							if name == "README.md" {
								print("[Warning] Readme detected: " + path)
								print(chap.description(with: 0))
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
	
	func description(with level: Int) -> String {
		let idx = Chapter.levelFlags.index(Chapter.levelFlags.startIndex, offsetBy: level)
		var desc = "\(prefixString(with: level))\(Chapter.levelFlags[idx]) [\(title ?? "")](\(path ?? ""))\n"
		for chap in subChapters {
			desc += chap.description(with: level + 1)
		}
		return desc
	}
}

setbuf(__stdoutp, nil);
var contents = try? String.init(contentsOfFile: "SUMMARY.md")
if let contents = contents {
	let chap = Chapter.init(titleLine: "[XXTouch 知识库](SUMMARY.md)", contents: contents, level: 0)
	print(chap.description)
}
