class RemoveInstructors < ActiveRecord::Migration
  def change

    drop_table :instructors
  end
end
