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
		station.train_arrive(self)
		@location = station
	end

	def depart(station)
		station.train_leave(self)
		@location = "In Transit"
	end
	
	def location
	 	@location  
	end


end
