
require 'thp/utils/embeds'

module THP
  module Commands
    module Thanks
      module Attributes
        ALL = [
          THANKS = {
            description: 'Say thanks to bot',
            help_available: true,
            max_args: 0,
            rescue: 'Oh no, something terrible has happened. An Error occured executing this command :c',
            usage: "#{THP_BOT.prefix}thanks"
          }.freeze
        ].freeze
      end

      def self.thanks(event)
        THP::Utils::Embeds.send_embed(event: event, title: 'You are welcome. I just want to make the life more fun! :smile:')
      end
    end
  end
end