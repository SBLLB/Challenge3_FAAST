#! /usr/bin/env ruby

require 'commuter_holder'

class Train

include CommuterHolder

	def initialize(carriages)
		@carriages = carriages
	end

	def capacity 
		@capacity = 40 * @carriages
	end

end
