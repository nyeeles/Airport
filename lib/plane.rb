class Plane

	def initialize
		land!
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

	def announcement
		puts "Hello, and welcome onboard Yeeles Atlantic. Now if you look down to your left you will see Vaidas Airlines. The CEO of Vaidas Airlines recently criticized Yeeles Atlantic for creating a sky array. So please look down and wave to his unhappy passengers who are sat on a multimillion pound coach with wings. Bye Vaidas!"
		`say -v vicki hello, and welcome on board yeels atlantic. Now if you look down to your left you will see Vaidas airlines. The CEO of vaidas airlines recently crittesized yeels atlantic for creating a, sky, array. So please look down and wave to his unhappy passengers who are sat on a multimillion pound coach with wings. Bye vaidas!`
	end
end