class Totaler
	def get_total(user)
		total = 0
		user.workouts.each { |x| total += x.distance_as_miles}
		return total
	end

	
end