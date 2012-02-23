require 'benchmark'

module Rack
  class BenchmarkMiddleware
    def initialize(app)
      @app = app
    end

    def call(env)
      status = nil
      headers = {}
      response = []

      time = Benchmark.realtime do
        status, headers, response = @app.call(env)
      end
      email_benchmarks time
      [status, headers, response]
    end

    private

    def email_benchmarks(time)
      ap '-- response time --'
      ap time
      ap '-------------------'
    end
  end
end
