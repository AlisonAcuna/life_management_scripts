# parking_lot.rb
# gem install rspec
require 'rspec'
require_relative 'parking_lot' # Assuming your code is in my_calculator.rb

describe ParkingLot do
  describe '#new' do
    it '# It creates a new parking lot with the specified number of levels' do
      parking_lot = ParkingLot.new(2)
      require 'pry'; binding.pry
      expect(parking_lot.levels).to eq(2)
    end
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