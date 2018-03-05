require 'dotenv/load'
require 'bundler'
require 'romato'

Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
end