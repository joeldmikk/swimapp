class CreateNotWorkouts < ActiveRecord::Migration
  def change
    create_table :not_workouts do |t|
      t.integer :distance
      t.string :units
      t.user :references

      t.timestamps
    end
  end
end
