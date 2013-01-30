# -*- coding: utf-8 -*-
class HomeController < ApplicationController
  def index

    @conferences = Conference.where(:anounce=>nil).order("date_conference DESC").first(10)
    @anounce_conference = Conference.where(:anounce=>true).first
  end
end
