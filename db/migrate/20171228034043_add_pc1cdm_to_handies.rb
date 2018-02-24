class AddPc1cdmToHandies < ActiveRecord::Migration[5.1]
  def change
    add_column :handies, :cdmread, :text
    add_column :handies, :cdmwrite, :text
    add_column :handies, :rdr112, :text
    add_column :handies, :rdw112, :text
    add_column :handies, :rdr4k, :text
    add_column :handies, :rdw4k, :text
    add_column :handies, :rdrqd324k, :text
    add_column :handies, :rdwqd324k, :text
  end
end
