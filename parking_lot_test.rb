# parking_lot.rb
# gem install minitest
require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'

require_relative 'parking_lot'

class ParkingLotTest < Minitest::Test
  def test_new
    parking_lot = ParkingLot.new(2)
    assert_equal 2, parking_lot.levels
  end

  def test_check_space
    parking_lot = ParkingLot.new(2)
    moto = Motorcycle.new
    bus = Bus.new

    moto_recommended_spot = parking_lot.check_space(moto)
    bus_recommended_spot = parking_lot.check_space(bus)

    assert_equal [0, :a, :a], moto_recommended_spot
    assert_equal [0, :a, :e], bus_recommended_spot
  end
end





# def main
#   pl = ParkingLot.new(2)
#   moto = Motorcycle.new
#   bus = Bus.new
#   moto_recommended_spot = pl.check_space(moto)
#   bus_recommended_spot = pl.check_space(bus)
#   pl.park(bus_recommended_spot, true)
#   pl.lot_status
# end

# main