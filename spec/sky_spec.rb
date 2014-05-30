require 'sky'

describe 'Sky' do
	
	let(:sky) { Sky.new }
	let(:plane) { Plane.new }
	
	it 'can be empty' do
		expect(sky.air_space).to be_empty
	end

	it 'can have a plane' do
		sky.add(plane)
		expect(sky.air_space).to_not be_empty
	end
end