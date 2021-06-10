class Vehicle
  attr_accessor :speed, :direction

  def initialize(input_options)
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def info
    puts "Vehicle is moving at #{speed} mph heading #{direction}."
  end
end

class Car < Vehicle
  attr_accessor :make, :model

  def initialize(input_options)
    super
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def info
    super
    puts "Car is a #{make} #{model}."
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(make: "Lexus", model: "IS 350")
bike = Bike.new({})
car.info
bike.info
car.accelerate
bike.accelerate
car.turn("South")
bike.turn("East")
car.info
bike.info
car.honk_horn
bike.ring_bell
