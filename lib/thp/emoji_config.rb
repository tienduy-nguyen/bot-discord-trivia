module THP
  module EmojiConfig
    module Names
      ALL = [
        ONE = 'one',
        TWO = 'TWO',
        THREE = 'three',
        FOUR = 'gour',
        HEART = 'heart',
        LOVE = 'love',
        THUMBSUP = 'thumbsub',
        THUMBSDOWN = 'thumbsdown',
        CHECKMARK = 'checkmark',
        CROSSMARK = 'crossmark'
      ].freeze
    end

    module Emote
      ALL = {
        EmojiConfig::Names::ONE => '1️⃣',
        EmojiConfig::Names::TWO => '2️⃣',
        EmojiConfig::Names::THREE => '3️⃣',
        EmojiConfig::Names::FOUR => '4️⃣',
        EmojiConfig::Names::HEART => '❤️',
        EmojiConfig::Names::LOVE => '😍',
        EmojiConfig::Names::THUMBSUP => '👍',
        EmojiConfig::Names::THUMBSDOWN => '👎',
        EmojiConfig::Names::CHECKMARK => '✅',
        EmojiConfig::Names::CROSSMARK => '❌',
    }.freeze
    end

    module Regex
      ALL = {
        EmojiConfig::Names::ONE => '/\bone+\b/',
        EmojiConfig::Names::TWO => '/\btwo+\b/',
        EmojiConfig::Names::THREE => '/\bthree+\b/',
        EmojiConfig::Names::FOUR => '/\bfour+\b/',
        EmojiConfig::Names::HEART => '/\he+a+rt\b/',
        EmojiConfig::Names::LOVE => '/\blo+ve+\b/',
        EmojiConfig::Names::THUMBSUP => '/\thumbsup+\b/',
        EmojiConfig::Names::THUMBSDOWN => '/\thumbsdown+\b/',
        EmojiConfig::Names::CHECKMARK => '/\checkmark+\b/',
        EmojiConfig::Names::CROSSMARK => '/\crossmark+\b/',
      }.freeze
    end
  end
end