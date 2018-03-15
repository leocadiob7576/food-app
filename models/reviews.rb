require 'net/http'
require 'json'
require 'pp'

# url = 'https://thereportoftheweek-api.herokuapp.com/reports'

# uri = URI(url)
# response = Net::HTTP.get(uri)
# result = JSON.parse(response)
# puts = result['rating']
class Review
 attr_reader :user_choice, :rating 
 def initialize(user_choice,rating)
  @user_choice=user_choice
  @review=rating
 end
 
 def rating(user_choice)
  url = 'https://thereportoftheweek-api.herokuapp.com/reports'
  uri = URI(url)
  response = Net::HTTP.get(uri)
  result = JSON.parse(response)
  result[7]

end
puts rating('Fuel')

end