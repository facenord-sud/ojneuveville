# -*- encoding : utf-8 -*-
class ModifyPermissions < ActiveRecord::Migration
  def up
  	add_column :permissions, :all, :boolean
  end

  def down
  	remove_column :permissions, :all
  end
end
