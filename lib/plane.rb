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
		self
	end

	def flying?
		@flying
	end
end