class CreateEvents < ActiveRecord::Migration
  def change
  	drop_table :events
    create_table :events do |t|

      t.timestamps null: false
    end
  end
end
