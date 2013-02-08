class Presentation < ActiveRecord::Base
  attr_accessible :autor, :conference_id, :file, :file_name, :title, :context, :video_embed, :image
  belongs_to :conference

  scope :sort_presentation, order('id')

  validates :conference_id, :numericality => true
  validates :autor, :presence => true
  validates :title, :presence => true
  validates :context, :presence => true

  mount_uploader :file, FileUploader
  mount_uploader :image, ImageUploader
end
