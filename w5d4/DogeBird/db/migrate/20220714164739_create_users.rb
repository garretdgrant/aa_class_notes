class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      # unique requires and index, index does not require unique
      t.string "username", null: false, index: {unique: true} #another way to index and unique (nested hash)
      t.string "email", null: false
      t.index "email", unique: true #one way to index
      t.timestamps
    end
  end
end
  
  