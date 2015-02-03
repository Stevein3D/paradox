class CreateTaglines < ActiveRecord::Migration
  def change
    create_table :taglines do |t|
      t.string :title
      t.string :year

      t.timestamps
    end
  end
end
