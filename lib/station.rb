#! /usr/bin/env ruby 

require 'commuter_holder'

class Station

include CommuterHolder

attr_reader :train_list, :train_capacity

	def initialize(capacity = 200)
		@capacity = capacity
		@train_list = []
		@train_capacity = 2
	end

	# def train_capacity
	# 	@train_capacity = 2
	# end

	def platforms_full?
		train_capacity == train_count
	end

	def train_count
		@train_list.count
	end

	# def train_list
	# 	@train_list
	# end

	def train_arrive(train)
		raise "This station is full" if platforms_full?
		@train_list << train
	end

	def train_leave(train)
		@train_list.delete train
	end


end