class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :location
      t.integer :show_id

      t.timestamps
    end
  end
end
