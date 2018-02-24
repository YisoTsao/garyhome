class AddPc3ToHandies < ActiveRecord::Migration[5.1]
  def change
    add_column :handies, :pc3os, :text
    add_column :handies, :pc3mb, :text
    add_column :handies, :pc3vendor, :text
    add_column :handies, :pc3chip, :text
    add_column :handies, :pc3bios, :text
    add_column :handies, :pc3basic, :text
    add_column :handies, :pc3comp32, :text
    add_column :handies, :pc3burnin, :text
    add_column :handies, :pc3fat, :text
    add_column :handies, :pc3fat32, :text
    add_column :handies, :pc3ntfs, :text
    add_column :handies, :pc3exfat, :text
    add_column :handies, :pc3result, :text
    add_column :handies, :pc3led, :text
  end
end
