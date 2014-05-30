require 'sky'

describe 'Sky' do
	
	let(:sky) { Sky.new }
	let(:plane) { Plane.new }
	
	it 'can be empty' do
		expect(sky.air_space).to be_empty
	end
end