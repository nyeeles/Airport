module PlaneStorage

	def add_flying(plane)
		storage << plane.fly!
	end

	def add_landing(plane)
		storage << plane.land!
	end

	def release(plane)
		storage.delete(plane)
	end

	def plane_count
		storage.count
	end
end