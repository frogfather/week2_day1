class Car
  
  def initialize(colour, model, fuel_level, speed)
  @colour = colour
  @model = model
  @fuel = fuel_level
  @speed = speed
 # @driver = person
  #@passengers = []

  end

  def get_speed
    return @speed
  end

  def get_fuel
    return @fuel
  end

  def accelerate
    @speed += 10
    @fuel -=5
  end

  def brake
    if @speed >= 10 
    @speed -= 10 
    end
  end

end