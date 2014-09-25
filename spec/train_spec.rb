require 'train'

describe Train do

	let(:train) {Train.new(3)}
	let(:train_default) {Train.new}
	let(:station) {double :station}


	context 'on initialization' do 
		
		it 'should have a default number of 2 carriages' do
			expect(train_default.capacity).to eq(80)
		end

		it 'its capacity should calculate from number of carriages' do 
			expect(train.capacity).to eq(120)
		end

	end


	context 'should move between stations' do 

		it 'arrive at a station' do
			allow(station).to receive(:train_arrive)
			train.arrive(station)
			expect(train.location).to eq(station)
		end

		it 'depart a station' do 
			allow(station).to receive(:train_leave)
			train.depart(station)
			expect(train.location).to eq("In Transit")
		end

	end

	# it 'should have a default location of depot' do 
	# 	expect(train.location).to eq(:Depot)
	# end

	

#only depart a train when it is the station already
#only allow train to arrive when there is space in the station?

end
