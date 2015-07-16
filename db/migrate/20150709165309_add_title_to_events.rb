class AddTitleToEvents < ActiveRecord::Migration
  def change
    add_column :events, :title, :text
  end
end
