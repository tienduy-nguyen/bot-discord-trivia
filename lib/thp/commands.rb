require 'thp/commands/help.rb'
require 'thp/commands/ping.rb'
require 'thp/commands/quiz.rb'
require 'thp/commands/thanks.rb'

module THP
  module Commands
    extend Discordrb::Commands::CommandContainer

    command(:stats, Stats::Attributes::STATS) { |event| Stats.stats(event) }
    command(:ping, Ping::Attributes::PING) { |event| Ping.ping(event) }
  end
end