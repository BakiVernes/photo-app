class Image < ActiveRecord::Base
  belongs_to :user
  mount_uploader :picture, PictureUploader
  validate :picture_size
  
  private
    def method_name
        if picture.size > 5.megabytes
            errors.add(:picture, "should be less than 5MB")
        end
    end
end
