require 'dotenv/load'
require 'bundler'
require 'romato'

Bundler.require

require_relative 'models/recipe.rb'
require_relative 'models/restaurants.rb'
require_relative 'models/reviews.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  
  post '/resultRecipe' do
    user_food = params[:search]
    @search = SearchRecipe.new(user_food)
    
    erb :resultRecipe
  end  
  
  post '/views/resultRestaurants' do
    #puts params
    
    @user_search = params[:search]
    
    erb :resultRestaurants
  end
        

  post '/resultReviews.erb' do
    food = params[:food]
    @user_food_review = rating(food)
    
    erb:resultReviews
  end

end
class ApplicationController
  get '/views/recipe.erb' do
    erb :recipe
  end
  
  get '/views/restaurants.erb' do
    erb :restaurants
  end
  
  get '/views/reviews.erb' do
    erb :reviews
  end
  
  get  'https://thereportoftheweek-api.herokuapp.com/reports?category=@user_choice' do 
    erb :reviews
  end
  
end