require 'commuter_holder'
require 'station'
require 'commuter'

class Holder; include CommuterHolder end

describe CommuterHolder do

	it 'should list the commuters within it' do
		holder = Holder.new	
		commuter = Commuter.new
		expect{holder.add(commuter)}.to change{holder.commuter_list}.from([]).to([commuter])
	end

	it 'should set a default capacity' do 
		holder = Holder.new
		expect(holder.capacity).to eq(40)
	end




#have a default capacity of 40 
	#it 'should set a default capacity' do
	#holder = Holder.new	
	#expect(holder.capacity).to eq(40)
	#end
#know when full
#add a commuter
#remove a commuter
#allow a stations capacity to be set and override default capacity

end
