require 'open-uri'
require 'nokogiri'

open("http://www.oreilly.co.jp/catalog/") do |f|
  doc = Nokogiri::HTML.parse f.read
  prices = doc.css(".price").map{|p| p.text.tr(?,, '').to_i }
  amount = prices.inject(:+).to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, '\1,')

  puts "合計 #{prices.size}冊 #{amount}円"
end
