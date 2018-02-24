class AddPc2cdmToHandies < ActiveRecord::Migration[5.1]
  def change
    add_column :handies, :pc2cdmread, :text
    add_column :handies, :pc2cdmwrite, :text
    add_column :handies, :pc2rdr112, :text
    add_column :handies, :pc2rdw112, :text
    add_column :handies, :pc2rdr4k, :text
    add_column :handies, :pc2rdw4k, :text
    add_column :handies, :pc2rdrqd324k, :text
    add_column :handies, :pc2rdwqd324k, :text
  end
end
