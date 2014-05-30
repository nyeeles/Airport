class Sky

	def initialize
		@air_space ||= []
	end

	def air_space
		@air_space
	end

	def add(plane)
		@air_space << plane.fly!
	end

	def descend(plane)
		air_space.delete(plane)
	end

	def plane_count
		air_space.count
	end

	def bad_weather?
		[[false]*3, true].flatten.sample
	end
end