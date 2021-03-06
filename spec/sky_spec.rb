require 'sky'
require 'plane'

describe 'Sky' do
	
	let(:sky) { Sky.new }
	let(:plane) { Plane.new }
	
	it 'can be empty' do
		expect(sky.storage).to be_empty
	end

	it 'can have a plane' do
		sky.add_flying(plane)
		expect(sky.storage).to_not be_empty
	end

	it 'changes planes status to \'flying\'' do
		expect(plane).to receive(:fly!)
		sky.add_flying(plane)
	end

	it 'can descend a plane to land' do
		sky.add_flying(plane)
		sky.descend(plane)
		expect(sky.storage).to be_empty
	end

	it 'has a default capacity' do
		10.times {sky.add_flying(plane)}
		expect(sky).to be_full
	end

	it 'allows user to manually set a capacity' do
		sky.capacity=(15)
		10.times {sky.add_flying(plane)}
		expect(sky).to_not be_full
	end

	it 'allows user to manually set a capacity when creating a new instance of Sky' do
		sky2 = Sky.new({capacity: 15})
		10.times {sky2.add_flying(plane)}
		expect(sky2).to_not be_full
	end

	it 'executes an error message if it has reached capacity' do
		10.times {sky.add_flying(plane)}
		expect(sky).to receive :capacity_error
		sky.add_flying(plane)
	end

	it 'can sometimes have bad weather conditions' do
		sky.stub(:bad_weather?).and_return true
		expect(sky).to receive(:bad_weather?).and_return true
		sky.bad_weather?
	end
end