class Car
  def initialize
    @tank = Tank.new
    @lights = Lights.new
    @trunk = Trunk.new
  end

  def load_fuel(quantity)
    @tank.load(quantity)
  end

  def check_fuel
    @tank.check
  end

  def check_lights
    @lights.check
  end

  def turn_on_headlights
    @lights.on
  end

  def turn_off_headlights
    @lights.off
  end

  def store_in_trunk(type, quantity)
    @trunk.store(type, quantity)
  end

  def trunk_contents
    @trunk.contents
  end
end

class Tank
  def initialize
    @tank = 0
  end

  def load(quantity)
    if @tank >= 10
      puts "--- Already full ---"
    else
      puts "--- Loading fuel ---"
      @tank += quantity
    end
  end

  def check
    puts "--- Checking fuel ---"
    if @tank.positive?
      puts "--- #{@tank}l of gas in the tank ---"
    else
      puts "--- Tank is empty ---"
    end
  end
end

class Lights
  def initialize
    @lights = false
  end

  def check
    if @lights
      puts "--- Lights are on ---"
    else
      puts "--- Lights are off ---"
    end
  end

  def on
    puts "--- Turning lights on ---"
    @lights = true
  end

  def off
    puts "--- Turning lights off ---"
    @lights = false
  end
end

class Trunk
  def initialize
    @trunk = {}
  end

  def store(type, quantity)
    @trunk[type] = quantity
    puts "--- Stored #{type} ---"
  end

  def contents
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
