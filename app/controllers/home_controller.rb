# -*- coding: utf-8 -*-
class HomeController < ApplicationController
  def index

    @conferences = Conference.all.sort { |x, y| y.date_conference <=> x.date_conference }.first(10)
    @conf = Conference.all.sort { |x, y| y.date_conference <=> x.date_conference }.first
  end
end
