# -*- coding: utf-8 -*-
class Conference < ActiveRecord::Base
  attr_accessible :description, :date_conference, :title, :image ,:anounce
  has_many :presentation, :dependent => :destroy

  validates :title, :presence => true
  validates :date_conference, :presence => true
  validates :description, :presence => true

  mount_uploader :image, ImageUploader
end
