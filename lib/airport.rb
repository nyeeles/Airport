class Airport

	def initialize
		@terminal ||= []
	end

	def terminal
		@terminal
	end

	def park(plane)
		@terminal << plane.land!
	end

	def dispatch
		terminal.pop
	end

	def plane_count
		terminal.count
	end
end