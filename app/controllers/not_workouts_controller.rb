class NotWorkoutsController < ApplicationController
  before_action :set_not_workout, only: [:show, :edit, :update, :destroy]

  # GET /not_workouts
  # GET /not_workouts.json
  def index
    @not_workouts = NotWorkout.all
  end

  # GET /not_workouts/1
  # GET /not_workouts/1.json
  def show
  end

  # GET /not_workouts/new
  def new
    @not_workout = NotWorkout.new
  end

  # GET /not_workouts/1/edit
  def edit
  end

  # POST /not_workouts
  # POST /not_workouts.json
  def create
    @not_workout = NotWorkout.new(not_workout_params)

    respond_to do |format|
      if @not_workout.save
        format.html { redirect_to @not_workout, notice: 'Not workout was successfully created.' }
        format.json { render action: 'show', status: :created, location: @not_workout }
      else
        format.html { render action: 'new' }
        format.json { render json: @not_workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /not_workouts/1
  # PATCH/PUT /not_workouts/1.json
  def update
    respond_to do |format|
      if @not_workout.update(not_workout_params)
        format.html { redirect_to @not_workout, notice: 'Not workout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @not_workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /not_workouts/1
  # DELETE /not_workouts/1.json
  def destroy
    @not_workout.destroy
    respond_to do |format|
      format.html { redirect_to not_workouts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_not_workout
      @not_workout = NotWorkout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def not_workout_params
      params.require(:not_workout).permit(:distance, :units, :references)
    end
end
