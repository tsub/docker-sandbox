require 'bundler/setup'
require 'sinatra'
require 'fluent-logger'

get '/' do
  'Hello, world!'
end
