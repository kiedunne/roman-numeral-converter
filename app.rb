require 'sinatra/base'
require 'capybara/rspec'
require 'rspec'
require_relative './model/roman_numeral.rb'

class Converter < Sinatra::Base

  run! if app_file == $0
end
