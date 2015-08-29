class FixTaglineName < ActiveRecord::Migration
  def change
  	add_column :taglines, :title_index, :integer
  	rename_column :taglines, :source, :title
  	rename_column :taglines, :line, :tagline
  end
end
