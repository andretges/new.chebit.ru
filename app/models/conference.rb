# -*- coding: utf-8 -*-
class Conference < ActiveRecord::Base
  attr_accessible :content, :date_conference, :title, :image
  has_many :presentation, :dependent => :destroy

  mount_uploader :image, FileUploader
end
