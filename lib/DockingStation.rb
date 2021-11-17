class DockingStation
    def release_bike #release_bike returns a new instance of the Bike class.
        bike = Bike.new
    end
end

class Bike
    def working?
      true
    end
end 
docking_station = DockingStation.new
puts docking_station.release_bike