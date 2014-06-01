require 'stormy_weather_exception'

describe 'StormyWeatherException' do
	
	it 'raies an error when the weather is bad' do
		double = storm, error: :bad
	end
end