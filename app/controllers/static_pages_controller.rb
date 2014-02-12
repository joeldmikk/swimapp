class StaticPagesController < ApplicationController
  
  def home
  	@user = current_user
    #@goal = @user.goal
  	#current_user.goal != nil ? @goal = current_user.goal : @goal = 100
  end

  def help
  end

  def about
  end

  def contact
  end
end
