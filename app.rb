require 'sinatra/base'
require 'capybara/rspec'
require 'rspec'
require_relative './model/roman_numeral.rb'

class Converter < Sinatra::Base
  enable :sessions
  set :sessions_secret, 'My session secret'

  get '/' do
    erb(:index)
  end

  post '/convert' do
    session[:number] = params[:number]
    redirect '/result'
  end

  get '/result' do
    @number = session[:number]
    erb(:result)
  end

  run! if app_file == $0
end
