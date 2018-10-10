require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  def get_name
  @menu.xpath('//name')
  end

  def prices
    prices = @menu.xpath("//price")
    pricesArr = []
    prices.each do |price|
      pricesArr.push price.text[1..-1].to_f
    end
    return pricesArr.max
  end


  # Place your methods here

end
