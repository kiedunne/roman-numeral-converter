# frozen_string_literal: true

require 'sinatra/base'
require 'capybara/rspec'
require 'rspec'
require_relative './model/roman_numeral.rb'
# This class controlls requests
class Converter < Sinatra::Base
  enable :sessions
  set :sessions_secret, 'My session secret'

  get '/' do
    erb(:index)
  end

  post '/convert' do
    session[:number] = params[:number]
    @rm = RomanNumeral.create
    @rm.convert(params[:number])
    redirect '/converter'
  end

  before do
    @roman_numeral = RomanNumeral.instance
  end

  get '/converter' do
    @number = session[:number]
    erb(:converter)
  end

  get '/table' do
    @dictionary = RomanNumeral::DICTIONARY
    erb(:table)
  end

  run! if app_file == $PROGRAM_NAME
end
