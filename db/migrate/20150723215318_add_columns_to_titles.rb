class AddColumnsToTitles < ActiveRecord::Migration
  def change
  	add_column :titles, :episode, :text
  	add_column :titles, :episode_num, :integer 
  	add_column :titles, :season_num, :integer
  	add_column :titles, :title_sort, :text
  end
end
