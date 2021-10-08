require "http"

puts "Give me a word that you would like a definiton for."
word = gets.chomp

request = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=YOUR API KEY GOES HERE")

request = request.parse(:json)

puts request
