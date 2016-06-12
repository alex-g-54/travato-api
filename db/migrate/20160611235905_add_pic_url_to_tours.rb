class AddPicUrlToTours < ActiveRecord::Migration[5.0]
  def change
    change_table :tours do |t|
      t.string :pic_url
    end
  end
end
