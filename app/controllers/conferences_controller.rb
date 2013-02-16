# -*- coding: utf-8 -*-
class ConferencesController < InheritedResources::Base


  def index
    @anounce_conference = Conference.where(:anounce=>true).first
    @conferences = Conference.ordered
    render :layout => "application"
  end

  def show
    @conference = Conference.find(params[:id])
    render :layout => "conference"
  end
end
