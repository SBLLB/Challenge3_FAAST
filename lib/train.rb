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

	def depart(station)
		@location = "In Transit"
	end
	
	def location
	 	@location  
	end

	# def receive_commuter(commuter, station)




end
