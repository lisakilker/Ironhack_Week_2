require "rspec"
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
    it "should return the number when adding string with 1 number" do
      expect(@calculator.add("1")).to eq(1)
    end
    it "should add two numbers together" do
      expect(@calculator.add("1,4")).to eq(5)
    end
  end
end
