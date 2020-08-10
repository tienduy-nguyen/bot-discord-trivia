require 'thp/utils/embeds.rb'

module Ba
  module Events
    module Mention
      def self.on_mention(event)
        title = '!!!!!!!!!!!!!!!!!'
        description = 'Something for test'
        fields = [
          { name: 'Github (PRs encouraged)', value: 'https://github.com/tienduy-nguyen' },
          { name: 'Invite Link', value: INVITE_URL }
        ]

        Ba::Utils::Embeds.send_embed(event: event, title: title, description: description, fields: fields)
      end
    end
  end
end