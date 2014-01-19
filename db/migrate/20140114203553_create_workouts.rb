class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.integer	:distance
      t.string :units
      t.references :user
      t.timestamps
    end
  end
end
