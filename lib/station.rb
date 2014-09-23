#! /usr/bin/env ruby 

require_relative 'commuter_holder'

class Station

include CommuterHolder

	def initialize(capacity = 200)
		@capacity = capacity
		@train_list = []

	end

	def train_capacity
		@train_capacity = 2
	end

	def platforms_full?
		@train_capacity == train_count
	end

	def train_count
		@train_list.count
	end

	def train_list
		@train_list
	end

	def accept(train)
		@train_list << train
	end


end