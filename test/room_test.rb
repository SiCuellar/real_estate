require "minitest/autorun"
require "minitest/emoji"
require "./lib/room"

class RoomTest < MiniTest::Test
  def test_it_exist
    room = Room.new(:bedroom, 10, 13)

    assert_instance_of Room, room
  end

  def test_it_has_attributes
    room = Room.new(:bedroom, 10, 13)

    assert_equal :bedroom, room.category
  end

  def test_it_can_calculate_area
    room = Room.new(:bedroom, 10, 13)

    assert_equal 130, room.area
  end 


end
