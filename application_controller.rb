require 'dotenv/load'
require 'bundler'
require 'romato'

Bundler.require

require_relative 'models/recipe-search.rb'
require_relative 'models/restaurants.rb'
require_relative 'models/reviews.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
end