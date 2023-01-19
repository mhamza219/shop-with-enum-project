class Shop < ApplicationRecord
  belongs_to :supplier
  has_many_attached :images

  #for video attachment
  has_one_attached :video
  # validates :video, content_type: { in: %w[video/mp4 video/avi], message: "must be a valid video format" }, size: { less_than: 20.megabytes, message: "should be less than 20MB" }



  validates :product_name, presence: true

  enum status: {draft:0, published:1}


end
