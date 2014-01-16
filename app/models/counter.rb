class Counter < ActiveRecord::Base
  
  belongs_to :user
  attr_accessor :miles
  attr_accessor :workouts
  attr_accessor :goal

  @workouts = Array.new

#Creates a new Counter for the user.
  def intialize(goal, distance)
    if goal.nil?
      @goal = 100
    else
      @goal = goal
    end
    if distance.nil?
      @miles = 0
    else
      @miles = distance
    end
  end

  def total(workouts)
    @workouts.each { |distance| @miles += distance }
  end

end
