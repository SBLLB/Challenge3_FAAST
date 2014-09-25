#! /usr/bin/env ruby 

require 'station'
require 'train'

class Commuter

	def touch_in(station)
		station.commuter_list << self 
		#will this raise error if station full as error currently exists in .add(commuter)
	end

	def touch_out(station)
		station.commuter_list.delete self
	end

	def board(train, station)
		raise "Please don't commit suicide!" if station != train.location
		train.add(self)
		station.expel(self)
	end

	def disembark(train, station)
		raise "Please wait for the train to arrive in a station" if station != train.location
		station.add(self)
		train.expel(self)
	end

end
