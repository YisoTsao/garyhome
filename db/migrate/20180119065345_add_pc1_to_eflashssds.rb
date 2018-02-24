class AddPc1ToEflashssds < ActiveRecord::Migration[5.1]
  def change
    add_column :eflashssds, :pc1os, :text
    add_column :eflashssds, :pc1mb, :text
    add_column :eflashssds, :pc1vendor, :text
    add_column :eflashssds, :pc1chip, :text
    add_column :eflashssds, :pc1bios, :text
    add_column :eflashssds, :pc1interface, :text
    add_column :eflashssds, :pc1basic, :text
    add_column :eflashssds, :pc1comp32, :text
    add_column :eflashssds, :pc1burnin, :text
    add_column :eflashssds, :pc1wboot, :text
    add_column :eflashssds, :pc1cboot, :text
    add_column :eflashssds, :pc1fat, :text
    add_column :eflashssds, :pc1fat32, :text
    add_column :eflashssds, :pc1ntfs, :text
    add_column :eflashssds, :pc1exfat, :text
    add_column :eflashssds, :pc1result, :text
    add_column :eflashssds, :pc1led, :text
    add_column :eflashssds, :pc1inos1, :text
    add_column :eflashssds, :pc1inos2, :text
    add_column :eflashssds, :pc1inos3, :text
    add_column :eflashssds, :pc1inos4, :text
    add_column :eflashssds, :pc1inos5, :text
  end
end
