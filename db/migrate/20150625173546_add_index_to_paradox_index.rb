class AddIndexToParadoxIndex < ActiveRecord::Migration
  def change
  	add_index :doxes, :paradox_index, unique: true
  end
end
