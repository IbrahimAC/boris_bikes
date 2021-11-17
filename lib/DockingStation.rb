class DockingStation

  # def initialize(bike)
  #    @bike = bike

  # end 


    def release_bike #release_bike returns a new instance of the Bike class.
      Bike.new
      @bike = bike 
    end
 
end

class Bike

  def bike_docking

    station_one = DockingStation.new(@bike)
  end

    def working?
      true
    end
end 
