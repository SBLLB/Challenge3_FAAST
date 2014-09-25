require 'station'


describe Station do

	let(:station) {Station.new}

	it 'should set the station capacity to 200 on initialization' do
		expect(station.capacity).to eq(200)

	end

	it 'should allow a bespoke station capacity to be set' do
		station = Station.new(50)
		expect(station.capacity).to eq(50)

	end

	it 'should have a platform train capacity of 2' do 
		expect(station.train_capacity).to eq(2)
	end

	it 'should know if its platforms are full' do 
		2.times{station.train_arrive(:train)}
		expect(station.platforms_full?).to be true

	end

	it 'should know when a train has left a platform' do 
		station.train_arrive(:train)
		expect{station.train_leave(:train)}.to change{station.train_count}.by(-1)
	end

	it 'should not allow a train to arrive if station full' do 
		2.times{station.train_arrive(:train)}
		expect{station.train_arrive(:train)}.to raise_error(RuntimeError)

	end

# it 'should give an error if argument passed is not an integer' do 
	
	#it should allow a bespoke station capacity to be passed as an argument on creation.

end
