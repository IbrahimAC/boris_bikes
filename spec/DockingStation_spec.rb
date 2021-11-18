require 'DockingStation'
require 'Bikes'
describe DockingStation do
  it "checks if method the required method is defined" do
    docking_station = DockingStation.new

    expect(docking_station).to respond_to(:release_bike) 
  end
  it "expects release_bike to 'get a bike' meaning create a instance of one" do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.bike_docking(bike)
    expect(docking_station.release_bike).to be_instance_of(Bike) # same as obj.should be_instance_of(type)
    expect(docking_station.release_bike).to eq bike
  end

  it "expects true if bike is working" do
    docking_station = DockingStation.new
    bike = docking_station.release_bike

    expect(bike.working?).to eq true # fails with "expected true, got false (using ==)"
  end
   
  it "lets you dock the bike" do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    previous_length = docking_station.bike_rack.length

    expect(docking_station).to respond_to(:bike_docking) # same as obj.should be_instance_of(type)
    docking_station.bike_docking(bike)
    expect(docking_station.bike_rack.length).to eq previous_length + 1
    # expects docking station to be an instance of docking station. 
    # In the docking_the_bike method we'll create a new instance of docking station
    # with the bike instance of an atrribute of it 

  end

  it 'raises error when no bikes' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    previous_length = docking_station.bike_rack.length
    docking_station.bike_docking(bike)
    expect(docking_station.bike_rack).to raise_error "There are no bikes left."
  end  
end