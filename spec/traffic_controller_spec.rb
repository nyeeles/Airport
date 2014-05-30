require 'traffic_controller'
require 'airport'
require 'plane'

describe 'Traffic Controller' do
	
	let(:controller) { TrafficController.new }
	let(:airport) { Airport.new }
	let(:plane) { Plane.new }
	let(:sky) { Sky.new }

	it 'can signal a plane to take off' do
		expect(controller).to receive(:dispatch_plane_from)
		controller.dispatch_plane_from
	end

	it 'can make a plane take off, transfering from airport to sky' do
		airport.park(plane)
		controller.dispatch_plane_from(airport, plane, sky)
		expect(airport.plane_count).to eq 0
	end

	it 'can make a plane land at an airport' do
		sky.add(plane)
		controller.descend_plane_from(sky, plane, airport)
		expect(sky.plane_count).to eq 0
	end
end