require 'station'

describe Station do

	it 'should set the station capacity to 200 on initialization' do

		station = Station.new
		expect(station.capacity).to eq(200)

	end

	#it should not allow a train into the station if there's already one there.

end
