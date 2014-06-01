require_relative 'plane_storage'

class Airport

  include PlaneStorage

	def initialize(options = {})
		@terminal ||= []
		self.capacity = options.fetch(:capacity, capacity)
	end

	def storage
		@terminal
	end

	alias depart release

	def capacity_error
		raise "WARNING: #{self} has reached max capacity!" if self.full?
	end
end