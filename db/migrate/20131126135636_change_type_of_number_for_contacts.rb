class ChangeTypeOfNumberForContacts < ActiveRecord::Migration
  def up
    change_column :contacts, :fixe, :string
    change_column :contacts, :natel, :string
  end

  def down
    change_column :contacts, :fixe, :integer
    change_column :contacts, :natel, :integer
  end
end
