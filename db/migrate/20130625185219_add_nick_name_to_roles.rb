class AddNickNameToRoles < ActiveRecord::Migration
  def change
  	add_column :roles, :nick_name, :string
  end
end
