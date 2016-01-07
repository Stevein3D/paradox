class AddColumnToPeople < ActiveRecord::Migration
  def change
    add_column :people, :has_audio, :boolean
  end
end
