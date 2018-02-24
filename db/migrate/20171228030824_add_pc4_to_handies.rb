class AddPc4ToHandies < ActiveRecord::Migration[5.1]
  def change
    add_column :handies, :pc4os, :text
    add_column :handies, :pc4mb, :text
    add_column :handies, :pc4vendor, :text
    add_column :handies, :pc4chip, :text
    add_column :handies, :pc4bios, :text
    add_column :handies, :pc4basic, :text
    add_column :handies, :pc4ext34, :text
    add_column :handies, :pc4result, :text
    add_column :handies, :pc4led, :text
  end
end
