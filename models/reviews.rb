require 'net/http'
require 'json'
require 'pp'

# url = 'https://thereportoftheweek-api.herokuapp.com/reports'

# uri = URI(url)
# response = Net::HTTP.get(uri)
# result = JSON.parse(response)
# puts = result['rating']

 def rating(food)
  url = 'https://thereportoftheweek-api.herokuapp.com/reports'
  uri = URI(url)
  response = Net::HTTP.get(uri)
  result = JSON.parse(response)
  puts result[7]['product']
   
 end
