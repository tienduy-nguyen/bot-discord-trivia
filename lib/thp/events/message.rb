require 'thp/utils/message_helpers'

module THP
  module Events
    module Message
      def self.on_message(event)
        return if event.message.content.start_with? THP_BOT.prefix

        THP::Utils::MessageHelpers.get_message_reactions(event).compact.each do |emote|
          event.message.react emote
        end
      end
    end
  end
end