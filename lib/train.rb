#! /usr/bin/env ruby

require 'commuter_holder'

class Train

include CommuterHolder

	def initialize(carriages = 2)
		@carriages = carriages
	end

	def capacity 
		@capacity = 40 * @carriages
	end

	def arrive(station)
		@location = station
	end
	
	def location
	 	@location  
	end

end
