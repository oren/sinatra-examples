require 'sinatra/base'
require 'awesome_print'
require_relative 'benchmark_middleware'
require_relative 'no_chrome_middleware'
require_relative 'exception_mailer_middleware'
require_relative 'runtime_middleware'

class MyApp < Sinatra::Base
  use Rack::BenchmarkMiddleware
  # use Rack::Runtime
  # use Rack::NoChormeMiddleware
  # use Rack::ExceptionMailerMiddleware

  get '/' do
    # raise "Oy vey"
   "I am a boring sinatra app!"
  end
end
