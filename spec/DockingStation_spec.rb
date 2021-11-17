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

  it "expects true if bike is working" do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike.working?).to eq true # fails with "expected true, got false (using ==)"
  end
   
  it "lets you dock the bike" do
    docking_station = DockingStation.new
    bike = docking_station.release_bike

    expect(bike.bike_docking).to be_instance_of(DockingStation) # same as obj.should be_instance_of(type)
   
    # expects docking station to be an instance of docking station. 
    # In the docking_the_bike method we'll create a new instance of docking station
    # with the bike instance of an atrribute of it 

  end
end