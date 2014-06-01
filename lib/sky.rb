require_relative 'plane_storage'

class Sky

  include PlaneStorage

	def initialize
		@airspace ||= []
	end

	def storage
		@airspace
	end

	alias descend release

	def capacity_error
		raise "WARNING: There are too many planes in the sky right now!" if self.full?
	end

	def bad_weather?
		[[false]*3, true].flatten.sample
	end
end