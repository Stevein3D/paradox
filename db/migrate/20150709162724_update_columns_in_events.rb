class UpdateColumnsInEvents < ActiveRecord::Migration
  def up
    add_column :events, :message, 	  :text
    add_column :events, :title_index, :integer
    add_column :events, :blurb, 	  :text
    add_column :events, :medium,	  :string
    add_column :events, :sub_medium,  :string
    remove_column :events, :primary_skill
    remove_column :events, :biography
  end

  def down
    remove_column :events, :message, 	  :text
    remove_column :events, :title_index, :integer
    remove_column :events, :blurb, 	  :text
    remove_column :events, :medium,	  :string
    remove_column :events, :sub_medium,  :string
    add_column :events, :primary_skill
    add_column :events, :biography
  end
end
