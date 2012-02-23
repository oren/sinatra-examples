require 'benchmark'

module Rack
  class ExceptionMailerMiddleware
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, body =
        begin
          @app.call(env)
        rescue => boom
          send_email boom, env
          raise
        end

      [status, headers, body]
    end

    private

    def send_email(exception, env)
      ap '-- sending email --'
      ap exception
      ap env
      ap '-------------------'
    end
  end
end
