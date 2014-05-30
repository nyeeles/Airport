class Airport

	def initialize
		@terminal ||= []
	end

	def terminal
		@terminal
	end

	def park(plane)
		@terminal << plane
	end

	def dispatch(plane)
		terminal.delete(plane)
	end
end