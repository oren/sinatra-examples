require 'sinatra/base'
require File.join(File.dirname(__FILE__), 'websites/init')

map '/' do
  run YP::Site
end

map '/blog' do
  run YP::Blog
end

map '/search' do
  run YP::Search
end
