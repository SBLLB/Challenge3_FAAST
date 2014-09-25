require 'commuter_holder'


class Location; include CommuterHolder end

describe CommuterHolder do

	let(:location) {Location.new}
	let(:bespoke_location) {Location.new(50)}

	context 'on  initializing' do 

		it 'should set a default capacity' do 
			expect(location.capacity).to eq(40)
		end

	end

	context 'should track its capacity' do 

		it 'by listing the commuters within it' do
			expect{location.add(:commuter)}.to change{location.commuter_list}.from([]).to([:commuter])
		end


		it 'by knowing when it is full' do 
			40.times{location.add(:commuter)}
			expect(location).to be_full
		end

		it 'should not allow a commuter to board if full' do
			40.times{location.add(:commuter)}
			expect{location.add(:commuter)}.to raise_error(RuntimeError)
		end

		it 'removing a commuter from the commuter list when they leave' do
			location.add(:commuter)
			expect{location.expel(:commuter)}.to change{location.commuter_count}.by(-1)
		end
		
		it 'adding a commuter to the commuter list when they enter' do
			location.add(:commuter)
			expect{location.add(:commuter)}.to change{location.commuter_count}.by(1)

		end

	end

end
