# -*- coding: utf-8 -*-
class ConferencesController < InheritedResources::Base


  def index
    @conferences = Conference.where(:anounce=>false).order("date_conference DESC").first(10)
    @anounce_conference = Conference.where(:anounce=>true).first
    render :layout => "application"
  end

  def show
    @conference = Conference.find(params[:id])
    render :layout => "conference"
  end
end
