require "pry"
class House
  attr_reader :address,
              :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
    string_int =  @price.tr('$', '')
    string_int.to_i
  end



end
