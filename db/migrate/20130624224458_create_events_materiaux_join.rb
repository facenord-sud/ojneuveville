class CreateEventsMateriauxJoin < ActiveRecord::Migration
  def up
  	create_table :events_materiaux, :id => false do |t|
  		t.references :event, :material
  	end
  	add_index :events_materiaux, [:event_id, :material_id]
  end

  def down
  end
end
