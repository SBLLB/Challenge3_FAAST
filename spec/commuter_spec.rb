require 'commuter'


describe Commuter do

	let(:commuter) {Commuter.new}
	let(:station) {double :station, commuter_list: []}
	let(:train) {double :train, commuter_list: []}
	

	it 'should allow the commuter to touch in at starting station' do
	 	
	 	expect(station.commuter_list).to receive(:<<).with commuter
		commuter.touch_in(station)
	end

	it 'should allow the commuter to touch out of a station' do
		
		expect(station.commuter_list).to receive(:delete).with commuter
		commuter.touch_out(station)

	end

	it 'should let a commuter board a train' do
		allow(train).to receive(:location).and_return(station)
 		expect(train).to receive(:add).with commuter
		expect(station).to receive(:expel).with commuter
		commuter.board(train, station)
	end

	it 'should let a commuter disembark a train' do 
		allow(train).to receive(:location).and_return(station)
 		expect(station).to receive(:add).with commuter
		expect(train).to receive(:expel).with commuter
		commuter.disembark(train, station)
	end

	it 'should not allow a commuter to board a train thats not there' do 
		allow(train).to receive(:location).and_return(false)
		expect{commuter.board(train, station)}.to raise_error(RuntimeError, "Please don't commit suicide!")
	end

	it 'should not let a commuter disembark unless at station' do 
		allow(train).to receive(:location).and_return(false)
		expect{commuter.disembark(train, station)}.to raise_error(RuntimeError, "Please wait for the train to arrive in a station")
	end

#?Test Can't board/disembark a non-train


end
