class DockingStation
    def release_bike #release_bike returns a new instance of the Bike class.
      Bike.new
    end
end

class Bike
    def working?
      true
    end
end 
