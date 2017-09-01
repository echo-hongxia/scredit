class Banner < ApplicationRecord
  belongs_to :pic_category
  mount_uploader :pic, ImageUploader
end
