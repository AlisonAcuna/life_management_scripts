#!/usr/bin/env ruby


require 'rubygems'
require 'twilio-ruby'

# includes

# Proof of Concept to validate that I can send texts programatically via Twillio.
# Once that is sorted, move to hosted app for scheduled text capability


# NS: Blocked based on Twillio update - pick up here next session https://www.twilio.com/docs/messaging/compliance/toll-free/console-onboarding#submit-information-for-verification
# NS: Add secret handling
# NS: Move to branch
# NS: Port bash_profile for shortcuts

# future optimization: Move to hosted app for scheduled capability
# future optimization: normalize time
# future optimization: Directory so can enter names rather than numbers

def send_text()
  account_sid = ''
  auth_token = ''
  @client = Twilio::REST::Client.new(account_sid, auth_token)

  message = @client.messages.create(
    body: 'Hello from Twilio - test 1',
    from:
    to:
  )

  puts message.sid
end

send_text()