# -*- coding: utf-8 -*-
class Conference < ActiveRecord::Base
  attr_accessible :content, :date_conference, :title, :avatar
  has_many :presentation, :dependent => :destroy

  mount_uploader :avatar, FileUploader
end
