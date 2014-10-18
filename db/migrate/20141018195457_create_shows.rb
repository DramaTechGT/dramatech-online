class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.text :description
      t.date :opening_date
      t.date :closing_date
      t.string :company

      t.timestamps
    end
  end
end
