require 'json'
require 'net/http'

API_URL = "https://cat-fact.herokuapp.com/facts".freeze

puts 'Fetching a cat fact... *meow*'
response = Net::HTTP.get_response(URI.parse(API_URL))
facts = JSON.parse(response.body)
fact = facts['all'].sample['text']
puts "‘#{fact}’"
