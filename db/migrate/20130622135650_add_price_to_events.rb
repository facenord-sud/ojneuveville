class AddPriceToEvents < ActiveRecord::Migration
  def up
  	add_column :events, :price, :integer
  end

  def down
  	remove_column :events, :price
  end
end
