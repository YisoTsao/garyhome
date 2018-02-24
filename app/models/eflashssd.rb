class Eflashssd < ApplicationRecord
belongs_to :user , optional: true

has_attached_file  :image1,
  styles: 
  {   large: "500x500", 
      medium: "346x346",
      thumb: "200x200"}, 
      default_url: ""# "/images/:style/missing.png"

      has_attached_file :image2,
  styles: 
  {   large: "500x500", 
      medium: "346x346",
      thumb: "200x200"}, 
      default_url: ""# "/images/:style/missing.png"

      has_attached_file :image3, 
  styles: 
  {   large: "500x500", 
      medium: "600x600",
      thumb: "200x200"}, 
      default_url: ""# "/images/:style/missing.png"

  #This validates the type of file uploaded. According to this, only images are allowed.
  # validates_attachment_content_type :image, :image1, :image2, :image3,   content_type: /\Aimage\/.*\z/

  #Use this if you do not want to validate the uploaded file type.
     do_not_validate_attachment_file_type :image1

 #Validates file, file type and file size
   validates_attachment  :image1, :image2, :image3,  
   content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
   size: { in: 0..10000.kilobytes }


	def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Eflashssd.create! row.to_hash
    end
  end

def self.to_csv(options = {})
  # if export specify columns
  #def self.to_csv(column_names, handies,options = {})
  # column_names =[ "item"  , "pccitem", "receivedate" ,"startdate" ,"finishdate" , "solution"]
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |eflashssd|
        csv << eflashssd.attributes.values_at(*column_names)
      end
    end
  end
end

