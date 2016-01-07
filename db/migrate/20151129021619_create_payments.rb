class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :amount

      t.string :status
      t.integer :sender_id
      t.integer :receiver_id


      t.timestamps null: false
    end
  end
end
