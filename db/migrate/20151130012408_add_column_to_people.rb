class AddColumnToPeople < ActiveRecord::Migration
  def change
    add_column :people, :has_audio, :boolean, null: false, default: false
  end
end
