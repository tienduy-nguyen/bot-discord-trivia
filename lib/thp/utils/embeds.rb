module THP
  module Utils
    module Embeds
      module Defaults
        def self.embed_color
          0x17b6d6
        end

        def self.embed_url
          'https://github.com/tienduy-nguyen/bot-discord-trivia'
        end

        def self.embed_footer(text)
          Discordrb::Webhooks::EmbedFooter.new(
            text: text
          )
        end

        def self.embed_thumbnail
          Discordrb::Webhooks::EmbedThumbnail.new url: THP_BOT.profile.avatar_url
        end

        def self.embed_author(author)
          Discordrb::Webhooks::EmbedAuthor.new(
            name: author.distinct,
            icon_url: author.avatar_url
          )
        end
      end

      def self.send_embed(event:, title:, description: nil)
        event.channel.send_embed do |embed|
          embed.title = title
          embed.colour = Defaults.embed_color
          
          embed.description = description
          embed.footer = Defaults.embed_footer
          embed.timestamp = Time.now
          # fields.each { |field| embed.add_field(name: field[:name], value: field[:value], inline: field[:inline]) }
          # embed.url = Defaults.embed_url
          # embed.thumbnail = Defaults.embed_thumbnail
          # embed.author = Defaults.embed_author event.author
        end
      end
    end
  end
end