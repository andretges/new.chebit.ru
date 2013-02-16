class Presentation < ActiveRecord::Base
  attr_accessible :author, :conference_id, :file, :file_name, :title, :content, :video_embed, :image

  mount_uploader :file, FileUploader
  mount_uploader :image, ImageUploader

  belongs_to :conference

  scope :ordered, order(:title)

  validates :conference, :presence => true
  validates :title, :presence => true, :presence => true
  validates :author, :presence => true
  validates :content, :presence => true
end
