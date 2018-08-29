require "minitest/autorun"
require "minitest/emoji"
require "./lib/house"
require "./lib/room"


class HouseTest < MiniTest::Test
  def test_it_exist
    house = House.new("$400000", "123 sugar lane")

    assert_instance_of House, house
  end

  def test_it_has_attributes
    house = House.new("$400000", "123 sugar lane")

    assert_equal 400000, house.price
    assert_equal "123 sugar lane", house.address
    assert_equal [], house.rooms
  end

  def test_it_can_convert_price_symbol_to_int
    house = House.new("$400000", "123 sugar lane")

    assert_equal 400000, house.price
  end

  def test_it_can_add_room
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)

    house.add_room(room_1)
    house.add_room(room_2)

    assert_instance_of Room, room_1
    assert_instance_of Room, room_2
  end

  def test_it_can_show_all_rooms_in_house
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    room_3 = Room.new(:bedroom, 10, 10)

    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)

    assert_equal 3, house.rooms.count
    assert_equal [room_1, room_2, room_3], house.rooms
  end



end
