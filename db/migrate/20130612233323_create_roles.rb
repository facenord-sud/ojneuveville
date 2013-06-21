# -*- encoding : utf-8 -*-
class CreateRoles < ActiveRecord::Migration
  def up
    create_table :roles do |t|
      t.string :nick_name
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def down
  	drop_table :roles
  end
end
