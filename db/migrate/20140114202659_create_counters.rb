class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.string :unit
      t.integer :distance

      t.timestamps
    end
  end
end
