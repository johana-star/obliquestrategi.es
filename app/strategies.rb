require 'sinatra'
require 'sinatra/reloader'

get '/' do
  File.readlines("strategies.txt").sample
end