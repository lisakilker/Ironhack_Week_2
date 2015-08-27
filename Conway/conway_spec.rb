require_relative "./conway.rb"

RSpec.describe Cell do

  	let(:cell){Cell.new("alive", "neighbor")}
  	let(:cell){Cell.new("dead", "neighbor")}
	
	describe "#regenerate" do
    	it "regenerates a live cell from a live cell if it has 2 neighbours" do
      		cell1 = Cell.new(1,[0,0,0,0,0,0,1,1])
      		expect(cell1.regenerate).to eq(1)
    	end

    	it "regenerates a dead cell from a dead cell if it has 0 neighbours" do
      		cell1 = Cell.new(0,[0,0,0,0,0,0,0,0])
      		expect(cell1.regenerate).to eq(0)
    	end

    	it "moves the cells within a grid" do
  			grid = [
  				[:H1, :H2, :H3, :H4, :H5, :H6, :H7, :H8],
 				[:G1, :G2, :G3, :G4, :G5, :G6, :G7, :G8],
  				[:F1, :F2, :F3, :F4, :F5, :F6, :F7, :F8],
  				[:E1, :E2, :E3, :E4, :E5, :E6, :E7, :E8],
  				[:D1, :D2, :D3, :D4, :D5, :D6, :D7, :D8],
  				[:C1, :C2, :C3, :C4, :C5, :C6, :C7, :C8],
  				[:B1, :B2, :B3, :B4, :B5, :B6, :B7, :B8],
  				[:A1, :A2, :A3, :A4, :A5, :A6, :A7, :A8],
			]
		end
	end
end