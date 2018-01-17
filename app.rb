require 'sinatra'
require 'socket'
require 'httparty'

class Partay
  include HTTParty
  base_uri ENV['ENDPOINT']
end

get '/' do
  'Hello, world'
end
