class StaticPagesController < ApplicationController
  
  def home
  	@user = current_user
  	@total = Totaler.new().get_total(current_user)
  end

  def help
  end

  def about
  end

  def contact
  end
end
