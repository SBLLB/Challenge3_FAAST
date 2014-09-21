require 'commuter'
require 'station'

describe Commuter do

	let(:commuter) {Commuter.new}
	let(:station) {Station.new}
	

	it 'should allow the commuter to touch in at starting station' do
	 	expect{commuter.touch_in(station)}.to change{station.commuter_count}.by(1)
	end

	it 'should allow the commuter to touch out of a station' do
		commuter.touch_in(station)
		expect{commuter.touch_out(station)}.to change{station.commuter_count}.by(-1)
	end

end
