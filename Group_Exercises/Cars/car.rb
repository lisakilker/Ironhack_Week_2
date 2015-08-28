class Car
  attr_accessor :color, :engine
  def initialize(wheels, engine, color)
    @wheels = wheels
    @engine = engine
    @color = color
  end

  def show
    binding.pry
    puts "The number of wheels is #{@wheels} and the motor is a #{@engine}. The color is #{@color}"
  end
end
