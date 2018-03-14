require 'food2fork'
require 'net/http'
require 'json'
require 'pp'

key = ENV["FOOD2FORK_API_KEY"]

food = @user_food

class SearchRecipe
    attr_reader :search_recipe
    
    def initialize(food)
        @search_recipe = search_recipe(food)
    end
    
    def search_recipe(user_food)
        base_search = 'http://food2fork.com/api/search?key='
        url = base_search + key + '&q=' + user_food
        
        uri = URI(url)
        response = Net::HTTP.get(uri)
        pp JSON.parse(response)
        
        food_data["recipes"].each do
            puts []
        end
    end
end