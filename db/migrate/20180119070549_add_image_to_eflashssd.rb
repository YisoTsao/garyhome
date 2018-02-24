class AddImageToEflashssd < ActiveRecord::Migration[5.1]
  def change
  	add_attachment :eflashssds, :image1
  	add_attachment :eflashssds, :image2
  	add_attachment :eflashssds, :image3
  end
end
