require 'food2fork'
require 'net/http'
require 'json'
require 'pp'

# key = ENV["FOOD2FORK_API_KEY"]

food = @user_food

class SearchRecipe
    attr_reader :search_recipe
    
    def initialize(food)
        @search_recipe = search_recipe(food)
    end
    
    def search_recipe(food)
        base_search = 'http://food2fork.com/api/search?key='
        url = base_search + '55c0fb3c358ecc4cb6142f13dcf93851' + '&q=' + food
        
        uri = URI(url)
        response = Net::HTTP.get(uri)
        pp JSON.parse(response)
        
    end
end