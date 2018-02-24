class AddPc3ToEflashssds < ActiveRecord::Migration[5.1]
  def change
    add_column :eflashssds, :pc3os, :text
    add_column :eflashssds, :pc3mb, :text
    add_column :eflashssds, :pc3vendor, :text
    add_column :eflashssds, :pc3chip, :text
    add_column :eflashssds, :pc3bios, :text
    add_column :eflashssds, :pc3interface, :text
  end
end
