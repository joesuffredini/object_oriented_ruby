class Vehicle
  attr_reader :speed, :direction

  def initialize(input_options)
    @speed = input_options[:speed]
    @direction = input_options[:direction]
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
end

class Car < Vehicle
  attr_reader :color, :drivetrain

  def initialize(input_options)
    super
    @color = input_options[:color]
    @drivetrain = input_options[:drivetrain]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize(input_options)
    super
    @gears = :gear
    @basket = :basket
  end

  def ring_bell
    puts "Ring ring!"
  end
end

p car1 = Car.new(color: "red", drivetrain: "AWD")
