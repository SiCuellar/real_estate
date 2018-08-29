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



end
