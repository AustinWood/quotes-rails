class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.string :text, null: false
      t.integer :said_by, null: false
      t.timestamps
    end
    add_index :quotes, :said_by
  end
end
