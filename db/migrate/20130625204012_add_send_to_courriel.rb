class AddSendToCourriel < ActiveRecord::Migration
  def change
  	add_column :courriels, :is_send, :boolean, defautl: false
  end
end
