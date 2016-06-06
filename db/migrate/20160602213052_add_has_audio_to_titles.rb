class AddHasAudioToTitles < ActiveRecord::Migration
  def change
  	add_column :titles, :has_audio, :boolean
  end
end
