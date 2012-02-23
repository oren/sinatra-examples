require 'sinatra/base'

class MyApp < Sinatra::Base
  # comes with rack
  use Rack::Auth::Basic do |username, password|
    username == 'admin' && password == 'pass'
  end

  get '/' do
   "Sinatra + Basic Authentication middleware"
  end
end
