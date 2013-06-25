class CreateMateriaux < ActiveRecord::Migration
  def change
    create_table :materiaux do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
