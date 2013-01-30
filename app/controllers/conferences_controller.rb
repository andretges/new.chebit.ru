# -*- coding: utf-8 -*-
class ConferencesController < InheritedResources::Base
layout "conference"

  def index
    @conferences = Conference.all
    @conf = Conference.all.sort { |x, y| y.date_conference <=> x.date_conference }.first
  end

  def show
    @conference = Conference.find(params[:id])
  end
end
