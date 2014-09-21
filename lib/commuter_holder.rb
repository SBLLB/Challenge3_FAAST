#! /usr/bin/env ruby 

module CommuterHolder

DEFAULT_CAPACITY = 2

	def commuter_list
		@commuter_list ||= []
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def add(commuter)
		commuter_list << commuter
	end

	def full?	
		commuter_count == capacity
	end

	def commuter_count
		commuter_list.count 
	end



end