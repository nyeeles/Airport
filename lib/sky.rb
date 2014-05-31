class Sky

	include PlaneStorage

	def initialize
		@airspace ||= []
	end

	def storage
		@airspace
	end

	alias descend release

	def change_flying_status
		@airspace.each {|plane| plane.fly! }
	end




	# def air_space
	# 	@air_space
	# end

	# def add(plane)
	# 	@air_space << plane.fly!
	# end

	# def descend(plane)
	# 	air_space.delete(plane)
	# end

	# def test
	# 	air_space.count
	# end

	def bad_weather?
		[[false]*3, true].flatten.sample
	end
end