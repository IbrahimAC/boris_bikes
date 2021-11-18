class DockingStation
  attr_reader :bike_rack
  def initialize
    @bike_rack = []
  end


    def release_bike #release_bike returns a new instance of the Bike class.
      Bike.new
    
    end

    def bike_docking(bike)
      @bike_rack << bike
    end
end


