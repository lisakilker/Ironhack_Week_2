class POI
  attr_accessor :name, :visits, :comments
  def initialize(name, visits)
    @name = name
    @visits = visits
    @comments = []
  end

  def add_review(text)
    @comments.push(text)
  end
end

class POIManager
  attr_reader :pois

  def initialize
    @pois = []
  end

  def add_poi(poi)
    @pois << poi
  end

  def sorted_by_visits
    @pois.sort do |poiA, poiB|
      poiB.visits <=> poiA.visits
    end
  end
end