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

  def price_per_square_foot
    price_sq = price/area.to_f
    price_sq.round(2)
  end

  def rooms_sorted_by_area
    room = @rooms
    room.sort_by do |room|
      room.area
    end
  end

  def rooms_by_category
    rooms = @rooms
    rooms.group_by do |room|
      room.category
    end
  end
end
