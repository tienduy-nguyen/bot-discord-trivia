require 'thp/emoji_config.rb'

module THP
  module Models
    class Emoji
      attr_reader :emote, :name, :regex

      def initialize(emote, name, regex)
        @emote = emote
        @name  = name
        @regex = regex
      end

      def should_react?(message)
        message =~ @regex
      end

      def self.emojis
        emotes = base_emojis
        emotes.map do |name|
          Emoji.new(name: name, 
            regex: THP::EmojiConfig::Regex::ALL[name],
            emote: THP::EmojiConfig::Emote::ALL[name])
        end
      end

      def  self.base_emojis
        [
          THP::EmojiConfig::Names::ONE,
          THP::EmojiConfig::Names::TWO,
          THP::EmojiConfig::Names::THREE,
          THP::EmojiConfig::Names::FOUR,
          THP::EmojiConfig::Names::HEART,
          THP::EmojiConfig::Names::LOVE,
          THP::EmojiConfig::Names::THUMBSUP,
          THP::EmojiConfig::Names::THUMBSDOWN,
          THP::EmojiConfig::Names::CHECKMARK,
          THP::EmojiConfig::Names::CROSSMARK

        ]
      end
    end
  end
end