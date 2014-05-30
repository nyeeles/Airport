require_relative 'airport'
require_relative 'sky'

class TrafficController

	def dispatch_plane_from(airport, plane, sky)
		airport.dispatch(plane)
		plane.fly!
		sky.add(plane)
	end
end