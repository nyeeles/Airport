module PlaneStorage

	DEFAULT_CAPACITY = 10

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

	def full?
		self.plane_count == DEFAULT_CAPACITY
	end
end