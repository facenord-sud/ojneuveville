# -*- encoding : utf-8 -*-
class CreateRolesUsersJoin < ActiveRecord::Migration
  def up
  	create_table :roles_users, :id => false do |t|
  		t.references :role, :user
  	end
  	add_index :roles_users, [:role_id, :user_id]
  end

  def down
  	drop_table :roles_users
  end
end
