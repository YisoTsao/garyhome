class AddPc5ToHandies < ActiveRecord::Migration[5.1]
  def change
    add_column :handies, :pc5os, :text
    add_column :handies, :pc5mb, :text
    add_column :handies, :pc5vendor, :text
    add_column :handies, :pc5chip, :text
    add_column :handies, :pc5bios, :text
    add_column :handies, :pc5basic, :text
    add_column :handies, :pc5result, :text
    add_column :handies, :pc5led, :text
  end
end
