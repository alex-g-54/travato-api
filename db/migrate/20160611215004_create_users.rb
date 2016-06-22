class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :type
      t.string :username
      # t.string :email
      t.string :password
      t.string :full_name
      t.text :description
      t.string :facebook_token

      t.timestamps
    end
  end
end
