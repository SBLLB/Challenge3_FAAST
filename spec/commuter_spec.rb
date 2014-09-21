require 'commuter'
require 'station'

describe Commuter do

	
	it 'should allow a commuter to touch in' do
		commuter = Commuter.new
		station = Station.new
	 	expect{commuter.touch_in(station)}.to change{station.commuter_count}.by(1)

	end

	# #it should allow a passenger to alight a carriage
	# #it should allow a passenger to touch in at a station
	# #it should allow a passenger to touch out at a station


	
end
