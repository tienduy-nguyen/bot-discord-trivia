
require 'thp/utils/embeds'

module THP
  module Commands
    module Team
      module Attributes
        ALL = [
          TEAM = {
            description: 'Show the creators of bot.',
            help_available: true,
            max_args: 0,
            rescue: 'Oh no, something terrible has happened. An Error occured executing this command :c',
            usage: "#{THP_BOT.prefix}team"
          }.freeze
        ].freeze
      end

      def self.team(event)
        THP::Utils::Embeds.send_embed(event: event, title: "Here is my parent:\n")
      end
    end
  end
end