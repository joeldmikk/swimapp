class StaticPagesController < ApplicationController
  
  def home
  	@user = current_user
  	@user.goal == nil ? @goal = 100 : @goal = @user.goal
  end

  def help
  end

  def about
  end

  def contact
  end
end
