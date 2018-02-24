class AddPc4ToEflashssds < ActiveRecord::Migration[5.1]
  def change
    add_column :eflashssds, :pc4os, :text
    add_column :eflashssds, :pc4mb, :text
    add_column :eflashssds, :pc4vendor, :text
    add_column :eflashssds, :pc4chip, :text
    add_column :eflashssds, :pc4bios, :text
    add_column :eflashssds, :pc4interface, :text
  end
end
