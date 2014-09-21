#! /usr/bin/env ruby 

require 'station.rb'

class Commuter


	def touch_in(station)
		station.commuter_list << self 
	end

	def touch_out(station)
		station.commuter_list.delete self
	end


end
