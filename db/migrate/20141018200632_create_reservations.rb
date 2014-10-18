class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :notes
      t.integer :performance_id

      t.timestamps
    end
  end
end
