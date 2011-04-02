require 'rubygems'
require 'nokogiri'
require 'open-uri'

class CssSelector
  def parse(html, selector)
    doc = Nokogiri::HTML(html)
    doc.search(selector).map {|e| e.content }.join("\n")
  end
end

def CssSelector(html, selector)
  CssSelector.new.parse(html, selector)
end
