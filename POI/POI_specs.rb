require_relative "./POI_exercise.rb"

RSpec.describe POI do

let(:atlanta) {POI.new("Atlanta", 10)}
let(:omaha) {POI.new("Omaha", 8)}
let(:panama) {POI.new("Panama", 7)}

  describe "#POI initialize method" do

    it "should create an object with city name and number of visits" do
      expect(atlanta.visits).to eq(10)
    end
  end
end


RSpec.describe POIManager do
  
let(:managermethod) {POIManager.new}
let(:atlanta) {POI.new("Atlanta", 10)}
let(:omaha) {POI.new("Omaha", 8)}
let(:panama) {POI.new("Panama", 7)}

  describe "#POI Manager methods" do
    before do
      managermethod.add_poi(panama)
      managermethod.add_poi(omaha)
      managermethod.add_poi(atlanta)
    end

    it "should add POI instances to @pois array" do
      expect(managermethod.pois.count).to eq(3)
    end

    it "should rank based on the amount of visits a POI has" do
      sorted_by_visits_array = managermethod.sorted_by_visits
      expect(sorted_by_visits_array.first.name).to eq("Atlanta")
    end

    it "should rank based on the amount of visits a POI has" do
      sorted_by_visits_array = managermethod.sorted_by_visits
      expect(sorted_by_visits_array.last.name).to eq("Panama")
    end
  end
end