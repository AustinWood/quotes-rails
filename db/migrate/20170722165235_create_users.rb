class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :phone_number, null: false
      t.string :name, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.timestamps
    end
    add_index :users, :phone_number, unique: true
    add_index :users, :name
    add_index :users, :session_token, unique: true
  end
end
