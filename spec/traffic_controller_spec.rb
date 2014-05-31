require 'traffic_controller'
require 'airport'
require 'plane'

describe 'Traffic Controller' do
	
	let(:controller) { TrafficController.new }
	let(:airport) { Airport.new }
	let(:plane) { Plane.new }
	let(:sky) { Sky.new }

	it 'can signal a plane to take off' do
		expect(controller).to receive(:departing)
		controller.departing
	end

	it 'can make a plane take off, transfering from airport to sky' do
		airport.add_landing(plane)
		controller.departing(plane, airport, sky)
		expect(airport.plane_count).to eq 0
	end

	it 'can make a plane land at an airport' do
		sky.add_flying(plane)
		controller.descending(plane, sky, airport)
		expect(sky.plane_count).to eq 0
	end

	# it 'will not allow a plane to take off if weather is bad' do
	# 	airport.park(plane)
	# 	test = double :sky, bad_weather?: :true
	# 	:sky.test
	# 	controller.dispatch_plane_from(airport, plane, sky)
	# 	expect(airport.plane_count).to eq 1
	# end

end