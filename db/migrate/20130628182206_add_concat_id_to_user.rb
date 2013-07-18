class AddConcatIdToUser < ActiveRecord::Migration
  def change
  	add_column :users, :contact_id, :integer
  	add_index :users, :contact_id
  end
end
