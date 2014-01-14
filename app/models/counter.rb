class Counter < ActiveRecord::Base
  
  belongs_to :user

  def intialize(unit)
    @distance = 0
    @unit = unit
  end

end
