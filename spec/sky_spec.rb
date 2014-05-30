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

	it 'changes planes status to \'flying\'' do
		expect(plane).to receive(:fly!)
		sky.add(plane)
	end

	it 'can descend a plane to land' do
		sky.add(plane)
		sky.descend(plane)
		expect(sky.air_space).to be_empty
	end

	# it 'can sometimes have bad weather conditions' do
	# 	sky = double :sky, bad_weather? :true

	# 	expect(sky).to eq true if sky.bad_weather? == true
	# end
end