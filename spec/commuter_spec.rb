require 'commuter'


describe Commuter do

	let(:commuter) {Commuter.new}
	let(:station) {double :station, commuter_list: []}
	let(:train) {double :train, commuter_list: []}
	
	context ' oyster card' do 

		it 'is created on initialization' do 
		 	expect(commuter.balance).to eq 10
		end
		
		it 'deducts £2 on touch in' do 
			allow(station.commuter_list).to receive(:<<).with commuter
			expect{commuter.touch_in(station)}.to change{commuter.balance}.by(-2)
		end

		it 'will not gain access to station if balance £2 or less' do 
			commuter.balance = 2 
			expect{commuter.touch_in(station)}.to raise_error(RuntimeError)
		end

		it 'can be topped up' do
			expect{commuter.top_up(20)}.to change{commuter.balance}.by(20)
		end

	end


	context 'should move in and out of stations by' do 

		it 'touching in at a station' do
		 	
		 	expect(station.commuter_list).to receive(:<<).with commuter
			commuter.touch_in(station)
		end

		it 'touching in at a station' do
			
			expect(station.commuter_list).to receive(:delete).with commuter
			commuter.touch_out(station)
		end

	end

	context 'should move on and off trains by' do

		it 'boarding a train' do
			allow(train).to receive(:location).and_return(station)
	 		expect(train).to receive(:add).with commuter
			expect(station).to receive(:expel).with commuter
			commuter.board(train, station)
		end

		it 'disembarking a train' do 
			allow(train).to receive(:location).and_return(station)
	 		expect(station).to receive(:add).with commuter
			expect(train).to receive(:expel).with commuter
			commuter.disembark(train, station)
		end

	end

	context 'should recieve an error if' do 

		it 'they try to board a train thats not in the station' do 
			allow(train).to receive(:location).and_return(false)
			expect{commuter.board(train, station)}.to raise_error(RuntimeError, "Please don't commit suicide!")
		end

		it 'they try to disembark a train when it is not at the station' do 
			allow(train).to receive(:location).and_return(false)
			expect{commuter.disembark(train, station)}.to raise_error(RuntimeError, "Please wait for the train to arrive in a station")
		end

	end

	#?Test Can't board/disembark a non-train

end
