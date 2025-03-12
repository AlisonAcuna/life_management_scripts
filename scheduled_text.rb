#!/usr/bin/env ruby

# requires

# includes

# NS: build Rails app

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