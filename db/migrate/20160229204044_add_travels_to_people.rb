class AddTravelsToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :travels, :string
  end
end
