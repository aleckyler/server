require 'sinatra'
require '../stock_ticker.rb'
require 'rubygems'

# get '/' do
#   File.read(File.join('../wyncode_folder', 'stock_ticker.rb'))
# end

get '/' do
  "Hello world"
  # stock_ticker(aapl)
end

get "/sinatra" do
"Hello Sinatra"
end
