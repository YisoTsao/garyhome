class AddUserIdToEflashssds < ActiveRecord::Migration[5.1]
  def change
  	add_column :eflashssds, :user_id, :integer
  end
end
