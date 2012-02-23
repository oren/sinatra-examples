require 'sinatra/base'

class MyApp < Sinatra::Base
  get '/' do
   "I am a modular style sinatra app"
  end
end
