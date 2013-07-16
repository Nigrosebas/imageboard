class Post < ActiveRecord::Base
  attr_accessible :content, :password, :topic_id, :photo, :img
  belongs_to :topic 
  FOTOS = File.join Rails.root, 'public', 'photo_store'
  after_save :guardar_foto

  def photo=(file_data)
  	unless file_data.blank?
  		@file_data = file_data
  		self.img = file_data.original_filename.split('.').last.downcase
  	end
  end

  def photo_filename
  	File.join FOTOS, "#{id}.#{img}"
  end

  def photo_path
  	"/photo_store/#{id}.#{img}"
  end

  def has_photo?
  	File.exists? photo_filename
  end


  private
  def guardar_foto
  	if @file_data
  		FileUtils.mkdir_p FOTOS
  		File.open(photo_filename,'wb') do |f|
  			f.write(@file_data.read)
  		end
  		@file_data=nil
  	end
  end


end