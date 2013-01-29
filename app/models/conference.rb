# -*- coding: utf-8 -*-
class Conference < ActiveRecord::Base
  attr_accessible :content, :date_conference, :title, :image
  has_many :presentation, :dependent => :destroy

  validates :title, :presence => true
  validates :content, :presence => true

  mount_uploader :image, ImageUploader
end
