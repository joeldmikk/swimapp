class CreateWorkouts < ActiveRecord::Migration
  def change
    add_reference :users, index: true
    create_table :workouts do |t|
      t.integer	:distance

      t.timestamps
    end
  end
end
