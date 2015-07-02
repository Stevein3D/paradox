class CreateDoxes < ActiveRecord::Migration
  def change
    create_table :doxes do |t|
      t.integer :paradox_index
      t.string :paradox_name
      t.text :paradox
      t.text :brief
      t.text :full_description
      t.string :discovery_date
      t.string :owner
      t.text :example

      t.timestamps null: false
    end
  end
end
