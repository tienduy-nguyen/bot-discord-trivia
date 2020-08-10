require 'thp/commands/ping.rb'
require 'thp/commands/quiz.rb'
require 'thp/commands/thanks.rb'
require 'thp/commands/team.rb'

module THP
  module Commands
    extend Discordrb::Commands::CommandContainer

    command(:ping, Ping::Attributes::PING) { |event| Ping.ping(event) }
    command(:quiz, Quiz::Attributes::QUIZ) { |event| Quiz.quiz(event) }
    command(:thanks, Thanks::Attributes::THANKS) { |event| Thanks.thanks(event) }
    command(:team, Team::Attributes::TEAM) { |event| Team.team(event) }
  end
end