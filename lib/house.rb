require "pry"
require "./lib/room"
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

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(type)
    rooms = @rooms
    rooms.find_all do |room|
      room.category == type
    end
  end

  def area
    rooms = @rooms
    rooms.map do |room|
      room.area
    end.sum
  end
end
