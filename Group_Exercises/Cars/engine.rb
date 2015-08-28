class Engine
  attr_accessor :brand
  def initialize(brand)
    @brand = brand
    @sound = "vroom"
  end

  def horn

    print @sound
  end
end
