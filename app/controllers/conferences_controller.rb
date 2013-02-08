# -*- coding: utf-8 -*-
class ConferencesController < InheritedResources::Base


  def index
    @anounce_conference = Conference.order("date_conference DESC").first
    @conferences = Conference.order("date_conference DESC").limit(5).offset(1)
    render :layout => "application"
  end

  def show
    @conference = Conference.find(params[:id])
    render :layout => "conference"
  end
end
