class CreateHearings < ActiveRecord::Migration[5.0]
  def change
    create_table :hearings do |t|
      t.integer :quote_id, null: false
      t.integer :user_id, null: false
    end
  end
end
