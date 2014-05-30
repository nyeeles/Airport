require 'traffic_controller'
require 'airport'
require 'plane'

describe 'Traffic Controller' do
	
	let(:controller) { TrafficController.new }
	let(:gatwick) { Airport.new }
	let(:plane) { Plane.new }
	let(:sky) { Sky.new }

	it 'can signal a plane to take off' do
		expect(controller).to receive(:dispatch_plane_from)
		controller.dispatch_plane_from
	end

	it 'can make a plane take off, transfering from airport to sky' do
		gatwick.park(plane)
		controller.dispatch_plane_from(gatwick, plane, sky)
		expect(gatwick.plane_count).to eq 0
	end
end