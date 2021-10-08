require "http"

system "clear"

puts "Give me a word that you would like a definiton for."
word = gets.chomp

request = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=fYOUR API KEY GOES HERE")

info = request.parse(:json)

index = 0
info.length.times do
  info = info[index]
  puts "#{index + 1}, #{info["text"]}"
  index += 1
end
