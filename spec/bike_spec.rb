require 'Bikes'

describe Bike do 
   bike = Bike.new
   it "expects Bike instances to respond_to the method working?" do
     expect(bike).to respond_to(:working?)
   end
end 

