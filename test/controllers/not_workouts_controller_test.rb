require 'test_helper'

class NotWorkoutsControllerTest < ActionController::TestCase
  setup do
    @not_workout = not_workouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:not_workouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create not_workout" do
    assert_difference('NotWorkout.count') do
      post :create, not_workout: { distance: @not_workout.distance, references: @not_workout.references, units: @not_workout.units }
    end

    assert_redirected_to not_workout_path(assigns(:not_workout))
  end

  test "should show not_workout" do
    get :show, id: @not_workout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @not_workout
    assert_response :success
  end

  test "should update not_workout" do
    patch :update, id: @not_workout, not_workout: { distance: @not_workout.distance, references: @not_workout.references, units: @not_workout.units }
    assert_redirected_to not_workout_path(assigns(:not_workout))
  end

  test "should destroy not_workout" do
    assert_difference('NotWorkout.count', -1) do
      delete :destroy, id: @not_workout
    end

    assert_redirected_to not_workouts_path
  end
end
