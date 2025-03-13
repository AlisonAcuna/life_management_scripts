#!/usr/bin/env ruby


require 'rubygems'
require 'twilio-ruby'

# includes

# NS: Move to branch
# NS: Port bash_profile for shortcuts
# NS: validate base text send capability - investigate verifying number
# For US customers, Free Trial accounts with Toll Free phone numbers
# are required to complete Toll-Free Verification in order to send SMS.
# Once approved, these messages can only be sent to a verified phone number
# until you upgrade to a paid Twilio account.
# You can start the Toll Free message verification process by following our
# https://www.twilio.com/docs/messaging/compliance/toll-free/console-onboarding
# https://help.twilio.com/articles/11853148778523-Trial-Limits-and-US-Toll-Free-Number-Restrictions

def send_schedule_text(msg, from, to_array, time)
  # send msg to numbers at time
  # open question: How can I send messages from script
  # open question: How to trigger scipt at time?  Does it need to run continuously?
      # https://askubuntu.com/questions/2368/how-do-i-set-up-a-cron-job
      # it could run on a job that runs every 5 min bc I don't need down to the minute accuracy
      # However, No, a standard cron job will not run if the computer is powered off or in a sleeping state at the scheduled time,
      # So. . . that speaks to the need to host.
      # Heroku gives some options which opens the question - do I need to host this somewhere other than locally? https://devcenter.heroku.com/articles/scheduled-jobs-custom-clock-processes
      # This is the MVP for a larger project. . . perhaps I build this in the context of the larger project so I can use tooling Im familiar with?
      # Decision: Build this as a rails app, host it on Heroku bc I need continuous uptime, heroku is rails centric, and I am rails centric
  # future optimization: normalize time
  # future optimization: Directory so can enter names rather than numbers
end

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