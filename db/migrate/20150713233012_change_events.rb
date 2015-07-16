class ChangeEvents < ActiveRecord::Migration
  def change
  	rename_column :events, :today_date,  :event_date
  	rename_column :events, :today_month, :event_month
  	rename_column :events, :today_day,   :event_day
  	rename_column :events, :today_year,  :event_year
  	rename_column :events, :message,     :event_message
  	add_column    :events, :event_index, :integer
  	remove_column :events, :full_name, :string
  	remove_column :events, :first_name, :string
  	remove_column :events, :middle_name, :string
  	remove_column :events, :last_name, :string
  	remove_column :events, :medium, :string
  	remove_column :events, :sub_medium, :string
  	remove_column :events, :blurb, :text
  	remove_column :events, :title, :string
  end
end
