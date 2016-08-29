class AddItineraryHostColumn < ActiveRecord::Migration[5.0]
  def change
  	rename_column :itineraries, :local_id, :user_id
  end
end
