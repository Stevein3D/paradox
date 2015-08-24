class AddTaglineIndexToTaglines < ActiveRecord::Migration
  def change
  	add_column :taglines, :tagline_index, :integer
  end
end
