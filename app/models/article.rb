class Article < ActiveRecord::Base
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  enum status: { release: 0, preview: 1 }
end
