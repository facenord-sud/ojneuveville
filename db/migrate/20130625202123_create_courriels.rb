class CreateCourriels < ActiveRecord::Migration
  def up
    create_table :courriels do |t|
    	t.string :from
    	t.string :subject
    	t.text :message
    	t.datetime :send_at

     	t.timestamps
    end
  end

  def down
  	drop_table :courriels
  end
end
