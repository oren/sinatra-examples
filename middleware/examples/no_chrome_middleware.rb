module Rack
  class NoChormeMiddleware
    def initialize(app, options = {})
      @app = app
      @options = options
      @options[:redirect] ||= 'http://www.microsoft.com/windows/internet-explorer/default.aspx'
    end

    def call(env)
      chrome_found_in?(env) ? kick_it : @app.call(env)
    end

    private

    def chrome_found_in?(env)
      if env['HTTP_USER_AGENT']
        is_chrome?(env['HTTP_USER_AGENT'])
      end
    end

    def is_chrome?(ua_string)
      ua_string.match(/Chrome/) ? true : false
    end

    def kick_it
      [301, { "Content-Type" => "text/html",  'Location' => @options[:redirect] }, ['Fail browser is fail']]
    end
  end
end
