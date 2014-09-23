require 'station'
require 'train'

describe Station do

	it 'should set the station capacity to 200 on initialization' do

		station = Station.new
		expect(station.capacity).to eq(200)

	end

	it 'should allow a bespoke station capacity to be set' do

		station = Station.new(50)
		expect(station.capacity).to eq(50)

	end

	it 'should have a platform train capacity of 2' do 
		station = Station.new
		expect(station.train_capacity).to eq(2)
	end

	it 'should know if its platforms are full' do 
		station = Station.new
		train, train1, train2 = Train.new, Train.new, Train.new
		train.arrive(station)
		train1.arrive(station)
		expect(station.train_list).to eq([train, train1])
	end


	# it 'should give an error if argument passed is not an integer' do 
	#it should not allow a train into the station if there's already one there.
	#it should allow a bespoke station capacity to be passed as an argument on creation.

end
