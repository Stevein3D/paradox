class CreateTaglines < ActiveRecord::Migration
  def change
    create_table :taglines do |t|

      t.string  :line
      t.string  :source

      t.timestamps null: false
    end
  end
end
