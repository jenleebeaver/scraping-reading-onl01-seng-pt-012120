require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(open("https://flatironschool.com/")) #takes string of HTML returned by open-uri's open
#method and converts into a NodeSet (or nested nodes: parent and child elements ie.hashes)
#this will puts out our html into a doc
#Nokogiri allows us to iterate over our code and use brackets and
#dot notation to access our code
doc.css(".headline-26OIBN").text #here we are using our css selector to grab the span of the title

puts doc.css(".headline-26OIBN") #prints HTML


#iterating
html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)

doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")
