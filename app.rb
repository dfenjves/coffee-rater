require 'bundler'
Bundler.require
require_relative 'lib/coffee'

set :database, "sqlite3:coffee.db"

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/' do
    @coffee = Coffee.new
    @coffee.name = params[:name]
    @coffee.grind = params[:grind]
    @coffee.tamp = params[:tamp]
    @coffee.rating = params[:rating]
    @coffee.notes = params[:notes]
    @coffee.save!
    erb :list
  end

end