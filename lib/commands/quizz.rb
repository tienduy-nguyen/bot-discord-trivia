require 'httparty'

response = HTTParty.get('https://opentdb.com/api.php?amount=1&category=18&type=multiple&encode=url3986')

puts response.body
