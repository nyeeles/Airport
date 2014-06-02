require 'traffic_controller'
require 'airport'
require 'plane'

describe 'Traffic Controller' do
	
	let(:controller) { TrafficController.new }
	let(:airport) { Airport.new }
	let(:plane) { Plane.new }
	let(:sky) { Sky.new }

	before(:each) do
		sky.stub(:bad_weather?).and_return false
	end

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

	it 'can sometimes have bad weather conditions' do
		sky.stub(:bad_weather?).and_return true
		expect{ controller.departing(plane, airport, sky) }.to raise_error("Stormy weather!")
	end
end