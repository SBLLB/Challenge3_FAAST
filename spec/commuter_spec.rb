require 'commuter'
require 'station'
require 'train'

describe Commuter do

	let(:commuter) {Commuter.new}
	let(:station) {Station.new}
	let(:train) {Train.new}
	

	it 'should allow the commuter to touch in at starting station' do
	 	expect{commuter.touch_in(station)}.to change{station.commuter_count}.by(1)
	end

	it 'should allow the commuter to touch out of a station' do
		commuter.touch_in(station)
		expect{commuter.touch_out(station)}.to change{station.commuter_count}.by(-1)
	end

	it 'should let a commuter board a train' do
		commuter.touch_in(station)
		train.arrive(station)
		expect{commuter.board(train, station)}.to change{train.commuter_count}.by(1)
	end

	it 'should let a commuter disembark a train' do 
		train.arrive(station)
		commuter.board(train, station)
		expect{commuter.disembark(train, station)}.to change{train.commuter_count}.by(-1)
	end

	it 'should not allow a commuter to board a train thats not there' do 
		train.depart(station)
		expect{commuter.board(train, station)}.to raise_error(RuntimeError, "Please don't commit suicide!")
	end

	it 'should not let a commuter disembark unless at station' do 
		train.depart(station)
		expect{commuter.disembark(train, station)}.to raise_error(RuntimeError, "Please wait for the train to arrive in a station")
	end
#Can't board/disembark a non-train


end
