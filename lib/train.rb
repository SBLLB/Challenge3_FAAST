#! /usr/bin/env ruby

require_relative 'commuter_holder'
require_relative 'station'

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
		station.accept(self)
	end

	def depart(station)
		@location = "In Transit"
	end
	
	def location
	 	@location  
	end


end
