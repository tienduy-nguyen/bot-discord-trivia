require 'thp/models/emoji'

module THP
  module Utils
    module MessageHelpers
      def self.get_message_reactions(event)
        THP::Models::Emoji.emojis.select do |emoji|
          emoji.should_react?(event.message.content.downcase)
        end.map(&:emote)
      end
    end
  end
end