class ModifiyPermissions < ActiveRecord::Migration
  def up
  	add_column :permissions, :more, :string
  	add_column :permissions, :un_constantize, :boolean
  end

  def down
  	remove_column :permission, :more
  	remove_column :permission, :un_constantize
  end
end
