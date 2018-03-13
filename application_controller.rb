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
    
    @user_food = params[:search]
    
    erb :resultRecipe
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
  
end