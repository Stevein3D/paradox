class ChangeTitles < ActiveRecord::Migration
  def change
    rename_column :titles, :season_index, :series_index
    add_column :titles, :release_msg, :text
    add_column :titles, :people_index, :integer

  end
end
