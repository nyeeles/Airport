class Airport

	def initialize
		@terminal ||= []
	end

	def terminal
		@terminal
	end

	def park(plane)
		terminal << plane.land!
	end

	def dispatch(plane)
		terminal.delete(plane)
	end

	def plane_count
		terminal.count
	end
end