-- This comment enforces unit-test coverage for this file:
-- coverage: 0
local json = require 'json'
local inspect = require 'inspect'
local application = require("summit.application")
local myData = application.get_data()
-- local myData = "{\"message\": \"This is my message from Postman.\", \"name\": \"Beth\"}"
-- local decodedString = json:decode(myData)
-- print(inspect(decodedString))

local contactName = myData.contactName
local senderName = myData.senderName
local message = myData.message

channel.answer()
channel.say('This is an automated message for ' .. contactName .. ' from ' .. senderName .. '. ' .. message)
channel.hangup()
