#! /usr/bin/env ruby 

module CommuterHolder

DEFAULT_CAPACITY = 40

	def commuter_list
		@commuter_list ||= []
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def add(commuter)
		@commuter_list << commuter
	end

end