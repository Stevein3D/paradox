class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :people_index
      t.string :full_name
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.text :event
      t.string :today_date
      t.integer :today_month
      t.integer :today_day
      t.integer :today_year
      t.text :primary_skill
      t.text :biography

      t.timestamps null: false
    end
  end
end
