class Race
  attr_accessor :cars
  def initialize(cars)
    @cars = cars
  end

  def show_list
    colors = [
      "red", "blue", "green", "black", "violet"
    ]
    @cars.each do |car|
      car.color = colors.sample
      puts car.inspect
    end
  end
end
