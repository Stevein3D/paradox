class ChangePeople < ActiveRecord::Migration
  def change
  	add_column :people, :birth_msg, :text
  	add_column :people, :death_msg, :text
  	add_column :people, :craft, :string
  	add_column :people, :profession, :string
  	add_column :people, :title_index, :integer
  end
end
