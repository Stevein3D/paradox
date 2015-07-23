class RenameColumnsInTitles < ActiveRecord::Migration
  def change
  	rename_column :titles, :country_of_origin, :country
  	rename_column :titles, :release_date_day, :release_day
  	rename_column :titles, :release_date_month, :release_month
  	rename_column :titles, :release_date_year, :release_year
  end
end
