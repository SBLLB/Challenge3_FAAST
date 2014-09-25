require 'train'

describe Train do

	let(:train) {Train.new(3)}
	let(:train_default) {Train.new}
	let(:station) {double :station}

	it 'should calculate capacity based on number of carriages' do 
		expect(train.capacity).to eq(120)
	end

	it 'should have a default number of 2 carriages' do
		expect(train_default.capacity).to eq(80)
	end

	it 'should be able to arrive at a station' do
		allow(station).to receive(:train_arrive)
		train.arrive(station)
		expect(train.location).to eq(station)
	end

	it 'should be able to depart a station' do 
		allow(station).to receive(:train_leave)
		train.depart(station)
		expect(train.location).to eq("In Transit")
	end

	




#default location = DEPOT
#only depart a train when it is the station already
#only allow train to arrive when there is space in the station?
#only take a number as an argument for no of carriages
#empty at end of line/all disembark
#all alight?
#when stop at station, exchange 'commuter object' between train and st


end
