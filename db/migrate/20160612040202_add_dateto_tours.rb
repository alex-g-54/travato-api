class AddDatetoTours < ActiveRecord::Migration[5.0]
  def change
    change_table :tours do |t|
      t.date :date
    end
  end
end
