require 'dotenv'
require 'discordrb'

Dotenv.load('.env')

module THP
  THP_BOT = Discordrb::Commands::CommandBot.new(token: ENV['TOKEN'], prefix: '!');
  INVITE_URL = "#{THP_BOT.invite_url}&permissions=37080128"

  load 'lib/thp/events.rb'
  load 'lib/thp/commands.rb'
  THP_BOT include! Events
  THP_BOT include! Commands


  THP_BOT.run
end