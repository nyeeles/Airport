require_relative 'plane_storage'

class Airport

	include PlaneStorage

	def initialize
		@terminal ||= []
	end

	def storage
		@terminal
	end

	alias depart release

end