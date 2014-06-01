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
		raise "WARNING: Heathrow has reached max capacity! David Cameron is still fighting with Boris Johnson about building Terminal 6." if self.full?
	end
end