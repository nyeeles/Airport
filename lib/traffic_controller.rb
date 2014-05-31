require_relative 'airport'
require_relative 'sky'

class TrafficController

	def departing(plane, airport, sky)
			airport.depart(plane)
			sky.add_flying(plane)
	end

	def descending(plane, sky, airport)
			sky.descend(plane)
			airport.add_landing(plane)
	end


	# def dispatch_plane_from(airport, plane, sky)
	# 	if sky.bad_weather? == false
	# 		airport.dispatch(plane)
	# 		plane.fly!
	# 		sky.add(plane)
	# 	else
	# 		puts "bad weather"
	# 	end
	# end

	# def descend_plane_from(sky, plane, airport)
	# 	if sky.bad_weather? == false
	# 		sky.descend(plane)
	# 		plane.land!
	# 		airport.park(plane)
	# 	else
	# 		puts "bad weather"
	# 	end
	# end
end