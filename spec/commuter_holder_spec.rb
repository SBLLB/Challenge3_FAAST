require 'commuter_holder'
require 'station'
require 'commuter'

class Location; include CommuterHolder end

describe CommuterHolder do

	let(:location) {Location.new}
	let(:commuter) {Commuter.new}

	it 'should list the commuters within it' do
		expect{location.add(commuter)}.to change{location.commuter_list}.from([]).to([commuter])
	end

	it 'should set a default capacity' do 
		expect(location.capacity).to eq(40)
	end

	it 'should know when it is full' do 
		40.times{location.add(commuter)}
		expect(location).to be_full
	end

	it 'should expel a commuter when they leave' do
		location.add(commuter)
		expect{location.expel(commuter)}.to change{location.commuter_count}.by(-1)

	end

	it 'should not allow a commuter to board if full' do
		40.times{location.add(commuter)}
		expect{location.add(commuter)}.to raise_error(RuntimeError)
	end

end
