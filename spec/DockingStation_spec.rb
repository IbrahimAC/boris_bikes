require 'DockingStation'
describe DockingStation do
  it "checks if method the required method is defined" do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike) 
  end
  it "expects release_bike to 'get a bike' meaning create a instance of one" do
    docking_station = DockingStation.new
    
    expect(docking_station.release_bike).to be_instance_of(Bike) # same as obj.should be_instance_of(type)
  end

end