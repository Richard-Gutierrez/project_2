class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :number
      t.string :address
      t.date :expiration
      t.string :code

      t.timestamps null: false
    end
  end
end
