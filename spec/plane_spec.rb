require 'plane'

describe 'Plane' do
	
	let(:plane) { Plane.new }

	it 'can not be flying' do
		expect(plane).to_not be_flying
	end

	it 'can fly' do
		plane = Plane.new
		plane.fly!
		expect(plane).to be_flying
	end

	it 'can land' do
		plane.fly!.land!
		expect(plane).to_not be_flying
	end

end