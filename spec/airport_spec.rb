require 'airport'

describe 'Airport' do

	let(:gatwik) { Airport.new }
	let(:plane) { Plane.new }
	
	it 'can be empty' do
		expect(gatwik.terminal).to be_empty
	end

	it 'can store a plane' do
		gatwik.park(plane)
		expect(gatwik.terminal).to_not be_empty	
	end

	it 'allows planes to dispatch the airport' do
		gatwik.park(plane)
		gatwik.dispatch(plane)
		expect(gatwik.terminal).to be_empty
	end

	it 'can count how many planes are parked in the terminal' do
		gatwik.park(plane)
		expect(gatwik.plane_count).to eq 1
	end


end