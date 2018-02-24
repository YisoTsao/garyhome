class AddPc3cdmToHandies < ActiveRecord::Migration[5.1]
  def change
    add_column :handies, :pc3cdmread, :text
    add_column :handies, :pc3cdmwrite, :text
    add_column :handies, :pc3rdr112, :text
    add_column :handies, :pc3rdw112, :text
    add_column :handies, :pc3rdr4k, :text
    add_column :handies, :pc3rdw4k, :text
    add_column :handies, :pc3rdrqd324k, :text
    add_column :handies, :pc3rdwqd324k, :text
  end
end
