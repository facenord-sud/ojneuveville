# -*- encoding : utf-8 -*-
class CreatePermissionsRolesJoin < ActiveRecord::Migration
  def up
  	create_table :permissions_roles, :id => false do |t|
  		t.references :permission, :role
  	end
  	add_index :permissions_roles, [:permission_id, :role_id]
  end

  def down
  end
end
