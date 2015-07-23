require 'sinatra'
# require 'httparty'
# require 'nokogiri'

# # require '../stock_ticker.rb'
# # require 'rubygems'
# #
# # get '/' do
# #   "test1"
# # end
# get '/' do
#   ticker = "aapl"
#   url = "http://finance.yahoo.com/q?s=#{ticker}"
#   response = HTTParty.get url
#   dom = Nokogiri::HTML(response.body)
#   ticker_span = dom.xpath("//span[@id='yfs_l84_#{ticker}']").first.content
#   prev_close_span = dom.xpath("//td[@class='yfnc_tabledata1']").first.content
#   "#{ticker.upcase} stock is currently trading at $#{ticker_span}. It's previous close price was #{prev_close_span}"
# end
# #
# # get '/' do
# #   "Hello world"
# #   # stock_ticker(aapl)
# # end
# #
# # get "/sinatra" do
# # "Hello Sinatra"
# # end
#
# # get '/' do
# #   public/hello.txt
# # end
# post '/' do
#   "Here's a post"
# en

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/string' do
  code= "<%= Time.now %>"
  erb code
end

get '/turtle' do
  @name = "Nameless"
  p @name
  erb :turtle
end

get '/turtle/' do
  @name = "Nameless"
  p @name
  erb :turtle
end

get '/turtle/:id' do
  turtles = ["tutley", "yertle", "stanley"]
  id = params["id"].to_i
  @name = turtles[id] || "Nameless"
  p @name
  erb :turtle
end
