require 'sinatra/base'
require 'haml'

class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/users' do
    haml :index
  end

  get '/admin/:name' do
    @name = params[:name]

    erb :'admin/index'
  end
end
