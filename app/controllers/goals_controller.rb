class GoalsController < Devise::RegistrationsController

	def new
		@goal = current_user.goal
	end

	def show
	end

	def edit
	end

end