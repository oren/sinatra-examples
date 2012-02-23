module YP
  class Site < Sinatra::Base
    get '/' do
      'main website'
    end
  end
end

