require 'airport'

describe 'Airport' do

	let(:gatwik) { Airport.new }
	let(:plane) { Plane.new }
	
	it 'can be empty' do
		gatwik = Airport.new
		expect(gatwik.terminal).to be_empty
	end

	it 'can store a plane' do
		gatwik.park(plane)
		expect(gatwik.terminal).to_not be_empty	
	end

end