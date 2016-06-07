class Image < ActiveRecord::Base
  belongs_to :post

  enum status: { top: 0, article: 1 }

  mount_uploader :name, ImageUploader
end
