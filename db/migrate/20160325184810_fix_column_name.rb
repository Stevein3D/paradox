class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :people, :primary_skill, :nationality
  	remove_column :people, :death_msg
  	remove_column :people, :birth_msg
  end
end
