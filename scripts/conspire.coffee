# Description:
#   Hubot is controlled by a secret government organisation
#
# Dependencies:
#   "conspire": "~1"
#
# Commands:
#   hubot conspiracy me - Get a random conspiracy theory
#
# Author:
#   rowanmanning

conspire = require 'conspire'

module.exports = (robot) ->
  robot.respond /conspiracy me\b/i, sendConspiracy

sendConspiracy = (msg) ->
  msg.send conspire()
