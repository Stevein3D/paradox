class AddSeasonIndexToTitles < ActiveRecord::Migration
  def change
    add_column :titles, :season_index, :string
  end
end
