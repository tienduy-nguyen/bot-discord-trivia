require 'thp/events/message.rb'
require 'thp/events/message.rb'

module THP
  module Events
    extend Discordrb::EventContainer
    mention { |event| Mention.on_mention event }
    message { |event| Message.on_message event }
    ready { |event| event.bot.listening = "#{THP_BOT.prefix}help" }
  end
end