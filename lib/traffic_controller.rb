require_relative 'airport'
require_relative 'sky'

class TrafficController

	def dispatch_plane_from(airport, plane, sky)
		if sky.bad_weather? == false
			airport.dispatch(plane)
			plane.fly!
			sky.add(plane)
		else
			puts "bad weather"
		end
	end

	def descend_plane_from(sky, plane, airport)
		sky.descend(plane)
		plane.land!
		airport.park(plane)
	end
end