module PlaneStorage

	DEFAULT_CAPACITY = 10

	def add_flying(plane)
		storage << plane.fly!
	end

	def add_landing(plane)
		capacity_error
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

	def capacity_error
		raise "WARNING: Full capacity reached!" if self.full?
	end
end