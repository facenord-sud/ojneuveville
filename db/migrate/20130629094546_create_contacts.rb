class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :fName
      t.string :lName
      t.integer :fixe
      t.integer :natel
      t.integer :user_id

      t.timestamps
    end
  end
end
