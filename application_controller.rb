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
  
end

class ApplicationController
  get '/views/recipe.erb' do
    erb :recipe
  end
end