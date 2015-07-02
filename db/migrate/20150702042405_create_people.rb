class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :people_index
      t.string :full_name
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :birth_date
      t.integer :birth_month
      t.integer :birth_day
      t.integer :birth_year
      t.string :death_date
      t.integer :death_month
      t.integer :death_day
      t.integer :death_year
      t.text :primary_skill
      t.text :biography

      t.timestamps null: false
    end
  end
end
