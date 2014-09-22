#! /usr/bin/env ruby 

require 'station.rb'
require 'train.rb'

class Commuter


	def touch_in(station)
		station.commuter_list << self 
	end

	def touch_out(station)
		station.commuter_list.delete self
	end

	def board(train ,station)
		train.add(self)
		station.expel(self)
	end

	def disembark(train, station)
		station.add(self)
		train.expel(self)
	end

end
