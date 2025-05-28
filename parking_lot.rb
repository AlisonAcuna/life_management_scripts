class ParkingLot
  attr_accessor :levels, :lot
  # The parking lot has multiple levels. Each level has a fixed number of parking spots.
  def initialize(levels)
    @levels = levels
    @lot = create_lot
  end

  def create_lot
    lot = {}
    level_array = (1..@levels).to_a
    level_array.each_with_index do |level, index|
      lot[index] = {
        a: false,
        b: false,
        c: false,
        d: false,
        e: false,
      }
    end
    lot
  end

  # Park a vehicle if there is available space.
  # Remove a vehicle from the parking lot
  def park(recommended_spot, bool)
    level = recommended_spot[0]
    start = recommended_spot[1]
    final = recommended_spot[2]
    (start..final).to_a.each do |spot|
      @lot[level][spot] = bool
    end
  end


  # Check if there is space available for a given vehicle.
  def check_space(auto_type)
    spots_needed = auto_type.spots

    @lot.each do |level, spots|
      select_spot = spots.select do|key, value|
        !value
      end.first(spots_needed)
      return [level, select_spot.first(spots_needed).first.first, select_spot.first(spots_needed).last.first]
    end
  end

  def lot_status
    puts self.lot
  end
end

# Each vehicle type requires a different number of contiguous parking spots:

# Motorcycle: 1 spot
# Car: 1 spot
# Bus: 5 contiguous spots on the same level
class Vehicle
  attr_accessor :spots
end

class Motorcycle < Vehicle
  def initialize
    @spots = 1
  end
end

class Car < Vehicle
  def initialize
    @spots = 1
  end
end

class Bus < Vehicle
  def initialize
    @spots = 5
  end
end