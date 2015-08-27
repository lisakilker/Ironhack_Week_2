require_relative "./fizzbuzz.rb"

RSpec.describe Fizz do

	before do
		puts "This is my fizz!"
		@fizz = Fizz.new
	end

	describe "#run_fizz" do
		it "should return fizz" do
			puts "fiz" if number % 3 == 0
		end

		it "should return buzz" do
			number % 5 == 0
		end
		
		it "should return fizzbuzz" do
			number % 7 == 0
		end
	end
end
