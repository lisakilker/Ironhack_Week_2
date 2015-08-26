require_relative "./calculator.rb"

RSpec.describe StringCalculator do

	before do
		puts "I am in the before block!"
		@calculator = StringCalculator.new
	end

	describe "#add method" do
		it "should return 0 when adding empty string" do
			expect(@calculator.add("")).to eq(0)
		end

		it "should return the number when adding string with one number" do
			expect(@calculator.add("1")).to eq(1)
		end

		it "should add two numbers together" do
			expect(@calculator.add("1,4")).to eq(5)
		end

		it "should add all numbers together" do
			expect(@calculator.add("1,2,3,0")).to eq(6)
		end
	end

	describe "#multiply method" do
		it "should multiply two numbers together" do
			expect(@calculator.multiply("2,4")).to eq(8)
		end

		it "should skip this if it finds a zero" do
			expect(@calculator.multiply("0,4")).to eq(0)
		end

	describe "#power method" do
		it "should give the power of the number" do
			expect(@calculator.power("2,3")).to eq(8)
		end
	end
end
end

