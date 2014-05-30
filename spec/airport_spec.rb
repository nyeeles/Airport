require 'airport'

describe 'Airport' do

	let(:gatwik) { Airport.new }
	let(:plane) { Plane.new }
	
	it 'can be empty' do
		gatwik = Airport.new
		expect(gatwik.terminal).to be_empty
	end

end