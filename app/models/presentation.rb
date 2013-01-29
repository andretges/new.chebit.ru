class Presentation < ActiveRecord::Base
  attr_accessible :autor, :conference_id, :file, :file_name, :title, :context, :video_embed
  belongs_to :conference
  mount_uploader :file, FileUploader
end
