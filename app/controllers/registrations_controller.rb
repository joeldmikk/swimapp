class RegistrationsController < Devise::RegistrationsController

	before_filter :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) << :goal
		devise_parameter_sanitizer.for(:account_update) << :goal
	end

end