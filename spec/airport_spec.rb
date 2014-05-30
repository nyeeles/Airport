require 'airport'

describe 'Airport' do

	let(:gatwick) { Airport.new }
	let(:plane) { Plane.new }
	
	it 'can be empty' do
		expect(gatwick.terminal).to be_empty
	end

	it 'can store a plane' do
		gatwick.park(plane)
		expect(gatwick.terminal).to_not be_empty	
	end

	it 'can count how many planes are parked in the terminal' do
		gatwick.park(plane)
		expect(gatwick.plane_count).to eq 1
	end

	it 'allows planes to dispatch the airport, one at a time' do
		gatwick.park(plane)
		gatwick.park(plane)
		gatwick.dispatch
		expect(gatwick.plane_count).to eq 1
	end

	it 'changes planes status to \'not flying\'' do
		expect(plane).to receive(:land!)
		gatwick.park(plane)
	end
end