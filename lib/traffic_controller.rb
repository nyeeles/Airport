require_relative 'airport'
require_relative 'sky'

class TrafficController

	def departing(plane, airport, sky)
	    weather_warning if sky.bad_weather?	
		airport.depart(plane)
		sky.add_flying(plane)
	end

	def descending(plane, sky, airport)
		weather_warning if sky.bad_weather?
		sky.descend(plane)
		airport.add_landing(plane)
	end

	def weather_warning
		raise "Stormy weather!"
	end

end