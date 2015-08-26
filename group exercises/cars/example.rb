require_relative "./car.rb"
require_relative "./engine.rb"
require_relative "./race.rb"

Race.new([Car.new(4, Engine.new("Ferrari"), "blue"), Car.new(4, Engine.new("BMW"), "red")]).show_list
