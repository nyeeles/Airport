require 'airport'
require 'plane'

describe 'Airport' do

	let(:gatwick) { Airport.new }
	let(:plane) { Plane.new }
	
	it 'can be empty' do
		expect(gatwick.storage).to be_empty
	end

	it 'can store a plane' do
		gatwick.add_landing(plane)
		expect(gatwick.storage).to_not be_empty	
	end

	it 'can count how many planes are parked in the terminal' do
		gatwick.add_landing(plane)
		expect(gatwick.plane_count).to eq 1
	end

	it 'allows planes to depart the airport, one at a time' do
		gatwick.add_landing(plane)
		gatwick.add_landing(Plane.new)
		gatwick.depart(plane)
		expect(gatwick.plane_count).to eq 1
	end

	it 'changes planes status to \'not flying\'' do
		expect(plane).to receive(:land!)
		gatwick.add_landing(plane)
	end

	it 'has a default capacity' do
		10.times {gatwick.add_landing(plane)}
		expect(gatwick.plane_count).to eq 10
		expect(gatwick).to be_full
	end

	# it 'doesn\'t allow more planes to be added if it has reached capacity' do
	# 	10.times {gatwick.add_landing(plane)}
	# 	gatwick.add_landing(plane)
	# 	gatwick.capacity_error
	# 	expect(gatwick.plane_count).to eq 10
	# end
end



