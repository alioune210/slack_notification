require "slack-notify"
require 'clockwork'

require 'active_support/time'

client = SlackNotify::Client.new(
  webhook_url: "https://hooks.slack.com/services/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",
  channel: "#général",
  username: "webhookbot",
  icon_url: "http://mydomain.com/myimage.png",
  icon_emoji: ":shipit:",
  link_names: 1
)
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