require "slack-notify"
require 'clockwork'

require 'active_support/time'

client = SlackNotify::Client.new(
  webhook_url: "https://hooks.slack.com/services/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",
  channel: "#général",
  username: "webhookbot",
  link_names: 1
)
client.notify("Hello There!")

client.notify("Ohayo")

module Clockwork
    # Here is a Clockwork method that says, "How long does it take you to process?"
    # Write the process and settings you want to send at regular intervals with slack here
    handler do |job|
       case job
       when "slack.job"
        puts "Hello There!"
       end
    end
    every(3.minutes, 'slack.job') 
end