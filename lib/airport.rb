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
end