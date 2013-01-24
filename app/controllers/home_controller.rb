# -*- coding: utf-8 -*-
class HomeController < ApplicationController
  def index
    @conferences = Conference.all
  end
end
