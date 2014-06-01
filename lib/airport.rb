require_relative 'plane_storage'

class Airport

  include PlaneStorage

  	# DEFAULT_CAPACITY = 10

	def initialize
		@terminal ||= []
	end

	def storage
		@terminal
	end

	alias depart release
end