require 'thp/utils/embeds'

module THP
  module Commands
    module Ping
      module Attributes
        ALL = [
          PING = {
            description: 'Politely ask bot if she is awake.',
            help_available: true,
            max_args: 0,
            rescue: 'Oh no, something terrible has happened. An Error occured executing this command :c',
            usage: "#{THP_BOT.prefix}pinghkhh"
          }.freeze
        ].freeze
      end

      def self.ping(event)
        THP::Utils::Embeds.send_embed(event: event, title: 'THP Ping!')
      end
    end
  end
end