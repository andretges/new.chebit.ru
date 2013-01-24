# -*- coding: utf-8 -*-
class Conference < ActiveRecord::Base
  attr_accessible :content, :date_conference, :title
end
