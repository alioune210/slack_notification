require "slack-notify"
require 'clockwork'

require 'active_support/time'

client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")

client.notify("Hello There!")
client.notify("Ohayo")
client.notify("Konnichiwa")
client.notify("Konbanwa", "#madrassa")


module Clockwork
    # Here is a Clockwork method that says, "How long does it take you to process?"
    # Write the process and settings you want to send at regular intervals with slack here
    handler do |job|
       case job
       when "slack.job"
        puts "Kind checkup"
       end
    end
    every(3.minutes, 'slack.job') 
end
