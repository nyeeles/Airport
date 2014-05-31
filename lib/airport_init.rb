require_relative 'airport'
require_relative 'plane'
require_relative 'sky'
require_relative 'traffic_controller'
require_relative 'plane_storage'

@plane = Plane.new
@gatwick = Airport.new
@sky = Sky.new
@controller = TrafficController.new