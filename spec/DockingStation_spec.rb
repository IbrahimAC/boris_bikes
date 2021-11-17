require 'DockingStation'
describe DockingStation do
  it "checks if method the required method is defined" do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike) 
  end
  

end