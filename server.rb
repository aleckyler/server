require 'sinatra'
require 'httparty'
require 'nokogiri'

get '/' do
  ticker = "aapl"
  url = "http://finance.yahoo.com/q?s=#{ticker}"
  response = HTTParty.get url
  dom = Nokogiri::HTML(response.body)
  ticker_span = dom.xpath("//span[@id='yfs_l84_#{ticker}']").first.content
  prev_close_span = dom.xpath("//td[@class='yfnc_tabledata1']").first.content
  "#{ticker.upcase} stock is currently trading at $#{ticker_span}. It's previous close price was #{prev_close_span}"
end

post '/' do
  "Here's a post"
end
