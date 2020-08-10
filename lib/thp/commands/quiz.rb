 
require 'httparty'
require 'json'
require 'thp/utils/embeds'
require 'thp/models/emoji'


module THP
  module Commands
    module Quiz
      module Attributes
        ALL = [
          QUIZ = {
            description: 'Pick a quiz',
            help_available: true,
            max_args: 0,
            rescue: 'Oh no, something terrible has happened. An Error occured executing this command :c',
            usage: "#{THP_BOT.prefix}quiz"
          }.freeze
        ].freeze
      end

      def self.quiz(event)
        raw_http = HTTParty.get(
          'https://opentdb.com/api.php?amount=1&category=18&type=multiple&encode=url3986',
          :headers =>{'Content-Type' => 'application/json'})
        
        body = JSON.parse(URI::DEFAULT_PARSER.unescape(raw_http.body))
        
        body = body["results"][0]
        
        question = body['question']
        correct_answer = body['correct_answer']
        incorrect_answers = body['incorrect_answers']
        incorrect_answers[incorrect_answers.length] = correct_answer
        incorrect_answers = incorrect_answers.shuffle
        
        THP::Utils::Embeds.send_embed(event: event, title: "\n**#{question}**\n", description: incorrect_answers)
      end
    end
  end
end



