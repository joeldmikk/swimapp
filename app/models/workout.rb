class Workout < ActiveRecord::Base

## This is the main 

  belongs_to :user

  #Can't remember how to do class constants in ruby...
  @@METERS = 0.000621371
  @@YARDS = 0.000568182

  @distance
  @miles
  @unit

  attr_accessor :distance
  attr_accessor :miles

  def initialize(@distance, @units = "yards")
    if @units = "meters"
      @miles = @distance * @@METERS
    else
      @miles = @disance * @@YARDS
    end
  end

  #need a method to add up the total miles of previous workouts + this workout
  def total  
    :workouts.each { |x|
      @total += x.getmiles
    }
    @total
  end

end
