class Sky

	include PlaneStorage

	def initialize
		@airspace ||= []
	end

	def storage
		@airspace
	end

	alias descend release

	def bad_weather?
		[[false]*3, true].flatten.sample
	end
end