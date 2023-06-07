require 'sinatra'

class Siny < Sinatra::Base
  get '/' do
    time = DateTime.now
    File.write('db.txt', time.to_s + "\n", mode: 'a')
    "Hello! It's: #{time}"
  end
end

