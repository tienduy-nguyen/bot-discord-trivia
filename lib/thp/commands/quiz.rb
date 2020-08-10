 
require 'httparty'
require 'dotenv'
require 'discordrb'
require 'json'
require 'thp/utils/embeds'

Dotenv.load('.env')


THP_BOT = Discordrb::Commands::CommandBot.new(token: ENV['TOKEN'], prefix: '!');
INVITE_URL = "#{THP_BOT.invite_url}&permissions=37080128"


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

THP_BOT.message(start_with: "#{THP_BOT.prefix}quiz") do |event|

end

THP_BOT.run


