class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :first_name
      t.string :last_name
      t.string :card_type
      t.string :number
      t.date :expires_on
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
