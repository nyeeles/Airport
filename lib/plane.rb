class Plane

	def initialize
		@flying = false
	end

	def fly!
		@flying = true
		self
	end

	def land!
		@flying = false
	end

	def flying?
		@flying
	end
end