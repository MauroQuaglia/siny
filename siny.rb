require 'sinatra'

class Siny < Sinatra::Base
  get '/' do
    time = DateTime.now
    File.write('./log/siny.log', time.to_s + "\n", mode: 'a')
    "Hello! It's: #{time}"
  end

  get '/log' do
    file = File.read('./log/siny.log')
    "Logs: #{file}"
  end
end

