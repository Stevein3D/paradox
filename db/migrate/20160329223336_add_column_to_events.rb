class AddColumnToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :event_index,    		 :integer
  	add_column :events, :event_year,     		 :bigint
  	add_column :events, :event_century,  		 :string
  	add_column :events, :event_month,    		 :integer
  	add_column :events, :event_day,      		     :integer
  	add_column :events, :event_hour,     		     :integer
  	add_column :events, :event_minute,   		     :integer
  	add_column :events, :event_second,   		     :integer
  	add_column :events, :event_period,   		     :string
  	add_column :events, :event_to,               :string
  	add_column :events, :event_location, 		     :string
  	add_column :events, :event_historical_event, :string
  	add_column :events, :event_person, 			     :string
  	add_column :events, :event_blurb, 			     :text

  end
end
