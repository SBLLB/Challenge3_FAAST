require 'train'

describe Train do

	it 'should calculate capacity based on number of carriages' do 
		train = Train.new(3)
		expect(train.capacity).to eq(120)
	end


#only take a number as an arguement for no of carriages
#


end
