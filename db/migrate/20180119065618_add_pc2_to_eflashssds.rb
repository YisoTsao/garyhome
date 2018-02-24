class AddPc2ToEflashssds < ActiveRecord::Migration[5.1]
  def change
    add_column :eflashssds, :pc2os, :text
    add_column :eflashssds, :pc2mb, :text
    add_column :eflashssds, :pc2vendor, :text
    add_column :eflashssds, :pc2chip, :text
    add_column :eflashssds, :pc2bios, :text
    add_column :eflashssds, :pc2interface, :text
    add_column :eflashssds, :pc2basic, :text
    add_column :eflashssds, :pc2result, :text
    add_column :eflashssds, :pc2led, :text
    add_column :eflashssds, :pc2inos1, :text
    add_column :eflashssds, :pc2inos2, :text
    add_column :eflashssds, :pc2inos3, :text
    add_column :eflashssds, :pc2inos4, :text
    add_column :eflashssds, :pc2inos5, :text
    add_column :eflashssds, :pc2inos6, :text
    add_column :eflashssds, :pc2inos7, :text
    add_column :eflashssds, :pc2inos8, :text
  end
end
