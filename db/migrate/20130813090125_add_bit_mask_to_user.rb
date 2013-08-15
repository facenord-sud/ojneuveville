class AddBitMaskToUser < ActiveRecord::Migration
  def change
    add_column :users, :bit_mask, :integer
  end
end
