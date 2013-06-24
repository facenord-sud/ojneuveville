class ModifiyEvents < ActiveRecord::Migration
  def up
  	change_column :events, :description, :text
  	change_column_default :events, :price, 10
  end

  def down
  end
end
