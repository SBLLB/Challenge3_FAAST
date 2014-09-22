require 'train'
require 'station'

describe Train do

	it 'should calculate capacity based on number of carriages' do 
		train = Train.new(3)
		expect(train.capacity).to eq(120)
	end

	it 'should have a default number of 2 carriages' do
		train = Train.new
		expect(train.capacity).to eq(80)
	end

	it 'should be able to arrive at a station' do
		train = Train.new
		station = Station.new
		train.arrive(station)
		expect(train.location).to eq(station)
	end


#default location = DEPOT
#only take a number as an arguement for no of carriages
#empty at end of line/all disembark
#all alight?
#when stop at station, exchange 'commuter object' between train and st


end
