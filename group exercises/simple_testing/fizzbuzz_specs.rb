require_relative "./fizzbuzz.rb"

RSpec.describe FizzBuzz do
  # let(:fizzbuzz) { FizzBuzz.new }
  let(:number_one) { "1" }
  let(:my_array) { [1,2] }
  before :all do
    @fizzbuzz = FizzBuzz.new
  end

  describe "#convert method" do
    it "should return the number when not multiple of 3 nor 5" do
      puts "first test"
      p @fizzbuzz
      @fizzbuzz.set_id(1)
      expect(@fizzbuzz.convert(1)).to equal(1)
    end


    it "should return fizz when multiple of 3" do
      puts "second test"
      expect(@fizzbuzz.convert(6)).to eq("fizz")
    end

    it "should return buzz when multiple of 5" do
      puts "third test"
      expect(@fizzbuzz.convert(10)).to eq("buzz")
    end

    it "should return @fizzbuzz when multiple of 3 and 5" do
      puts "fourth test"
      expect(@fizzbuzz.convert(15)).to eq("fizzbuzz")
    end
  end
  
  it "id set properly" do
    p @fizzbuzz
    expect(@fizzbuzz.id).to equal(1)
  end

  describe "random tests" do
    it "number_one is 1" do
      puts "fifth test"
      expect(number_one).to eq("1")
    end

    it "my_array is [1,2]" do
      puts "sixth test"
      expect(my_array).to eq([1,2])
    end
  end

end
