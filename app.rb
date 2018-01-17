require 'sinatra'
require 'socket'
require 'httparty'

class Partay
  include HTTParty
  base_uri ENV['ENDPOINT']
end

get '/' do
  options = {
    body: {
      name: ENV['PARAM_NAME'] || '',
      version: '2',
      message: ENV['PARAM_MESSAGE'] || '-'
    }
  }

  Partay.post('/users', options)

  Socket.gethostname
end
