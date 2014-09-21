require 'commuter_holder'
require 'station'
require 'commuter'

class Holder; include CommuterHolder end

describe CommuterHolder do

	let(:holder) {Holder.new}

	it 'should list the commuters within it' do
		commuter = Commuter.new
		expect{holder.add(commuter)}.to change{holder.commuter_list}.from([]).to([commuter])
	end

	it 'should set a default capacity' do 
		expect(holder.capacity).to eq(2)
	end

	it 'should know when it is full' do 
		commuter = Commuter.new
		commuter2 = Commuter.new
		holder.add(commuter)
		holder.add(commuter2)
		# 40.times{holder.add(commuter)}
		expect(holder).to be_full
	end




#know when full
#add a commuter
#remove a commuter
#allow a stations capacity to be set and override default capacity

end
