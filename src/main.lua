-- This comment enforces unit-test coverage for this file:
-- coverage: 0
local json = require 'json'
local inspect = require 'inspect'
local application = require("summit.application")
local myData = application.get_data()
-- local myData = '{"name":"Beth","message":"This is the message."}'
local decodedString = json:decode(myData)


local name = decodedString.name
local message = decodedString.message

channel.answer()
channel.say('This message is for'.. name .. '. ' .. message)
channel.hangup()
