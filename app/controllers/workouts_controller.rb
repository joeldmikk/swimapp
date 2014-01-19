class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def create
    w = Workout.new(distance: params[:distance], units:params[:units])
    if w.save

    else

    end
  end
end

