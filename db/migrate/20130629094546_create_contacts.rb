class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :fName
      t.string :lName
      t.string :fixe
      t.string :natel
      t.integer :user_id

      t.timestamps
    end
  end
end
