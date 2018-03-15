 require 'net/http'
 require 'json'
 require 'pp'


# url = 'https://thereportoftheweek-api.herokuapp.com/reports'
# uri = URI(url)
# response = Net::HTTP.get(uri)
# pp JSON.parse(response)\

# class Review
    
# end
class Reviews
 attr_reader :food, :rate
 def initialize(food, rate)
  @food=food
  @rate=rate
 end
 def get_food
 end
 
 def get_rate
 end
end

