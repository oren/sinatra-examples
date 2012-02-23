module YP
  class Blog < Sinatra::Base
    get '/' do
      'blog'
    end
  end
end
