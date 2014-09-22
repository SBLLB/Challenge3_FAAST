require 'station'

describe Station do

	it 'should set the station capacity to 200 on initialization' do

		station = Station.new
		expect(station.capacity).to eq(200)

	end

	it 'should allow a bespoke station capacity to be set' do

		station = Station.new(50)
		expect(station.capacity).to eq(50)

	end

	# it 'should give an error if argument passed is not an integer' do 
	# 	# station = Station.new(ten)
	# 	expect{station = Station.new(ten)}.to raise_error(RuntimeError)
	# end	

	#it should not allow a train into the station if there's already one there.
	#it should allow a bespoke station capacity to be passed as an argument on creation.

end
