class AddImageToHandy < ActiveRecord::Migration[5.1]
  def change
  	add_attachment :handies, :image
  	add_attachment :handies, :image1
  	add_attachment :handies, :image2
  	add_attachment :handies, :image3
  end
end
