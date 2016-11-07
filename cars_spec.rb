require('minitest/autorun')
require('minitest/rg')
require_relative('cars')
require_relative('person')


class TestCar < Minitest::Test

  def setup
  
    @car = Car.new('Yellow', 'Mini', 100, 0)
    @driver = Person.new('Brian', 32)
    #@passenger1 = Person.new('Tom',25)
    #@passenger2 = Person.new('Dick',30)
  end

def test_fuel_level
  binding.pry
  assert_equal(100, @car.get_fuel)
end

def test_speed
  assert_equal(0, @car.get_speed)
end

def test_braking_at_zero_speed
  @car.brake
  assert_equal(0, @car.get_speed)
end


def test_acceleration
  speed = @car.get_speed
  fuel = @car.get_fuel
  @car.accelerate
  assert_equal(speed + 10, @car.get_speed)
  assert_equal(fuel - 5, @car.get_fuel)
end

def test_braking_at_non_zero_speed
  speed = @car.get_speed
  if speed > 0 
  @car.brake
  assert_equal(speed - 10, @car.get_speed)
  else assert_equal(0, @car.get_speed)
  end 
end




end