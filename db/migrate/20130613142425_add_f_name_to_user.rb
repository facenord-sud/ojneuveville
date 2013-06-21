# -*- encoding : utf-8 -*-
class AddFNameToUser < ActiveRecord::Migration
  def up
  	add_column :users, :fName, :string
  end

  def down
  	remove_column :users, :fName
  end
end
