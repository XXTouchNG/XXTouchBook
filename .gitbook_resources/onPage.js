var path = require('path');
var omit = require('omit-keys');
var fs = require('graceful-fs');

var Promise = require('../../utils/promise');
var Templating = require('../../templating');
var Plugins = require('../../plugins');
var JSONUtils = require('../../json');
var LocationUtils = require('../../utils/location');
var Modifiers = require('../modifiers');
var writeFile = require('../helper/writeFile');
var getModifiers = require('../getModifiers');
var createTemplateEngine = require('./createTemplateEngine');
var fileToOutput = require('../helper/fileToOutput');

/**
 * Write a page as a json file
 *
 * @param {Output} output
 * @param {Page} page
 */
function onPage(output, page) {
    var options   = output.getOptions();
    var prefix    = options.get('prefix');

    var file      = page.getFile();

    var book      = output.getBook();
    var plugins   = output.getPlugins();
    var state     = output.getState();
    var logger    = output.getLogger();
    var rootFolder = output.getRoot();

    var resources = state.getResources();

    var engine = createTemplateEngine(output, page.getPath());

    // Output file path
    var filePath = fileToOutput(output, file.getPath());

    // Calcul relative path to the root
    var outputDirName = path.dirname(filePath);
    var basePath = LocationUtils.normalize(path.relative(outputDirName, './'));

    return Modifiers.modifyHTML(page, getModifiers(output, page))
    .then(function(resultPage) {
        // Generate the context
        var context = JSONUtils.encodeOutputWithPage(output, resultPage);
        context.plugins = {
            resources: Plugins.listResources(plugins, resources).toJS()
        };

        context.template = {
            getJSContext: function() {
                return {
                    page: omit(context.page, 'content'),
                    config: context.config,
                    file: context.file,
                    gitbook: context.gitbook,
                    basePath: basePath,
                    book: {
                        language: book.getLanguage()
                    }
                };
            }
        };

        // We should probabbly move it to "template" or a "site" namespace
        context.basePath = basePath;

        var hashPath = file.getPath() + '.time'
        var hashFullPath = path.join(rootFolder, hashPath);
        
        // find . -name "*.md.time" | xargs rm -f
        var shouldRender = true;
        try {
            var text = fs.readFileSync(hashFullPath, 'utf8');
            if (text == file.getMTime())
            {
                shouldRender = false
            }
        } catch (err) {
            
        }
        
        if (shouldRender) {
            logger.debug.ln('render page "' + file.getPath() + '"');
            // Save hash
            return writeFile(output, hashPath, file.getMTime())
            // Render the theme
            .then(function (o) {
                return Templating.renderFile(engine, prefix + '/page.html', context);
            })
            // Write it to the disk
            .then(function(tplOut) {
                logger.debug.ln('write to "' + filePath + '"');
                return writeFile(output, filePath, tplOut.getContent());
            });
        } else {
            logger.debug.ln('skip page "' + file.getPath() + '"');
            return Promise(output);
        }
        
    });
}

module.exports = onPage;
