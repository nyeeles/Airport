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

	def descend
		@air_space.pop
	end
end