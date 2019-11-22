class Car
  def initialize
    @trunk = {}
    @fuel = 0
    @lights = false
  end

  def load_fuel(quantity)
    if @fuel >= 10
      puts "--- Already full ---"
    else
      puts "--- Loading fuel ---"
      @fuel += quantity
    end
  end

  def check_fuel
    puts "--- Checking fuel ---"
    if @fuel.positive?
      puts "--- #{@fuel}l of gas in the tank ---"
    else
      puts "--- Tank is empty ---"
    end
  end

  def check_lights
    if @lights
      puts "--- Lights are on ---"
    else
      puts "--- Lights are off ---"
    end
  end

  def turn_on_headlights
    puts "--- Turning lights on ---"
    @lights = true
  end

  def turn_off_headlights
    puts "--- Turning lights off ---"
    @lights = false
  end

  def store_in_trunk(type, quantity)
    @trunk[type] = quantity
    puts "--- Stored #{type} ---"
  end

  def trunk_contents
    if @trunk.keys.length.positive?
      puts "--- Trunk contents ---"
      @trunk.each do |type, quantity|
        items = quantity > 1 ? "#{type}s" : type
        puts "--- #{quantity} #{items} avalilable ---"
      end
    else
      puts "--- Trunk is empy ---"
    end
  end
end

car = Car.new
car.turn_on_headlights
car.turn_off_headlights
car.check_lights
puts "\n"
car.trunk_contents
car.store_in_trunk("ball", 3)
car.store_in_trunk("jacket", 1)
car.trunk_contents
puts "\n"
car.check_fuel
car.load_fuel(10)
car.load_fuel(4)
car.check_fuel
