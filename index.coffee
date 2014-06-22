
fs = require 'fs'
path = require 'path'

module.exports = (robot) ->
  scriptPath = path.resolve __dirname, 'scripts'
  fs.exists scriptPath, (exists) ->
    if exists
      for file in fs.readdirSync(scriptPath)
        robot.loadFile scriptPath, file
        robot.parseHelp path.join(scriptPath, file)
