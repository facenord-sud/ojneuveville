class RemoveResponsableToEvents < ActiveRecord::Migration
  def up
    remove_column :events, :responsable
  end

  def down
  end
end
