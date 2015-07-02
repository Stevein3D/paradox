class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.integer :title_index
      t.string :medium
      t.string :sub_medium
      t.text :title
      t.text :description
      t.string :country_of_origin
      t.string :genre
      t.string :length
      t.string :mpaa
      t.string :release_date
      t.integer :release_date_day
      t.integer :release_date_month
      t.integer :release_date_year

      t.timestamps null: false
    end
  end
end
