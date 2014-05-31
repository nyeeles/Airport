module PlaneStorage

	def add(plane)
		storage << plane
	end

	def release(plane)
		storage.delete(plane)
	end

	def plane_count
		storage.count
	end
end