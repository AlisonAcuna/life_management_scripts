#!/usr/bin/env ruby

require 'rubygems'
require 'dotenv/load'
require 'textmagic-ruby'


# Proof of Concept to validate that I can send texts programatically via Twillio.
# Once that is sorted, move to hosted app for scheduled text capability

# NS: Blocked based on Twillio update - pick up here next session https://www.twilio.com/docs/messaging/compliance/toll-free/console-onboarding#submit-information-for-verification

# future optimization: Move to hosted app for scheduled capability
# future optimization: normalize time
# future optimization: Directory so can enter names rather than numbers

def send_text()
  username = ENV['USER_NAME']
  auth_token = ENV['TM_AUTH_TOKEN']
  @client = Textmagic::REST::Client.new(username, auth_token)

  params = {phones: ENV['TO'], text: 'Testing from script'}

  sent_message = @client.messages.create(params)

  puts "The sent message id: #{sent_message.id}"
end

send_text()