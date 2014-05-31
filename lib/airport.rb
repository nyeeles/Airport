require_relative 'plane_storage'

class Airport

	include PlaneStorage

	# alias :terminal :plane_storage

	alias :park :add

	alias :dispatch :release

	# def terminal
	# 	@plane_storage
	# end

	# def park(plane)
	# 	add(plane).land!
	# end

	# def dispatch(plane)
	# 	release(plane)
	# end
end