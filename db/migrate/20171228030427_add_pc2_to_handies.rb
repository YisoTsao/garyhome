class AddPc2ToHandies < ActiveRecord::Migration[5.1]
  def change
    add_column :handies, :pc2os, :text
    add_column :handies, :pc2mb, :text
    add_column :handies, :pc2vendor, :text
    add_column :handies, :pc2chip, :text
    add_column :handies, :pc2bios, :text
    add_column :handies, :pc2basic, :text
    add_column :handies, :pc2comp32, :text
    add_column :handies, :pc2burnin, :text
    add_column :handies, :pc2fat, :text
    add_column :handies, :pc2fat32, :text
    add_column :handies, :pc2ntfs, :text
    add_column :handies, :pc2exfat, :text
    add_column :handies, :pc2result, :text
    add_column :handies, :pc2led, :text
  end
end
