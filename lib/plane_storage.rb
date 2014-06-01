module PlaneStorage

	DEFAULT_CAPACITY = 10

	
	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def full?
		self.plane_count == capacity
	end

	def plane_count
		storage.count
	end

	def add_flying(plane)
		capacity_error
		storage << plane.fly!
	end

	def add_landing(plane)
		capacity_error
		storage << plane.land!
	end

	def release(plane)
		storage.delete(plane)
	end
end