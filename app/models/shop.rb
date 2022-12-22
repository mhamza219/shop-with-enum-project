class Shop < ApplicationRecord
  belongs_to :supplier
  has_one_attached :images

  validates :product_name, presence: true

  enum status: {draft:0, published:1}


end
