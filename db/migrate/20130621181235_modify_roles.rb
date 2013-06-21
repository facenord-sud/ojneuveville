# -*- encoding : utf-8 -*-
class ModifyRoles < ActiveRecord::Migration
  def up
  	remove_column :roles, :nick_name
  	change_column :roles, :description, :text
  end

  def down
  	add_column :roles, :nick_name, :string
  	change_column :roles, :description, :string
  end
end
