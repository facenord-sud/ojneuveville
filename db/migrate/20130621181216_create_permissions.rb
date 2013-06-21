# -*- encoding : utf-8 -*-
class CreatePermissions < ActiveRecord::Migration
  def up
    create_table :permissions do |t|
      t.string :action
      t.text :description
      t.string :subject_class
      t.integer :subject_id

      t.timestamps
    end
  end

  def down
  	delete_table :permissions
  end
end
