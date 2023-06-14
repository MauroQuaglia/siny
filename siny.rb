require 'sinatra'
require_relative './lib/siny_random'

class Siny < Sinatra::Base
  get '/' do
    time = DateTime.now
    File.write('./log/siny.log', time.to_s + "\n", mode: 'a')
    "Hello! It's: #{time}... #{SinyRandom.new.get}"
  end

  get '/log' do
    file = File.read('./log/siny.log')
    "Logs: #{file}"
  end

  get '/db' do
    file = File.read('./db.txt')
    "DB: #{file}"
  end
end

