# -*- coding: utf-8 -*-
class Conference < ActiveRecord::Base
  attr_accessible :description, :date_conference, :title, :image ,:anounce, :photo_content

  has_many :presentations, :dependent => :destroy

  scope :ordered, order('date_conference DESC')

  validates :title, :presence => true
  validates :date_conference, :presence => true
  validates :description, :presence => true

  mount_uploader :image, ImageUploader

  def passed?
    self.date_conference < Time.now
  end

end
