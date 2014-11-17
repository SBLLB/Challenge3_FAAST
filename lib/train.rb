#! /usr/bin/env ruby

require 'commuter_holder'
# require 'station'

class Train

include CommuterHolder

attr_reader :location
 # DEFAULT_LOCATION = Depot

	def initialize(carriages = 2)
		@carriages = carriages
		# location ||= DEFAULT_LOCATION
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
	
	

	


end
