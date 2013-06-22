class RemoveFnameToUsers < ActiveRecord::Migration
  def up
  	remove_column :users, :fName
  end

  def down
  	add_column :users, :fName, :string
  end
end
