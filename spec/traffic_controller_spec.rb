require 'traffic_controller'

describe 'Traffic Controller' do
	
	it 'can signal a plane to take off' do
		traffic_controller = TrafficController.new
		expect(traffic_controller).to receive(:dispatch_plane!)
		traffic_controller.dispatch_plane!
	end
end