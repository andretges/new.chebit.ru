# -*- coding: utf-8 -*-
class ConferencesController < InheritedResources::Base


  def index
    @anounce_conference = Conference.sort_by_date.first
    @conferences = Conference.sort_by_date.limit(5).offset(1)
    render :layout => "application"
  end

  def show
    @conference = Conference.find(params[:id])
    render :layout => "conference"
  end
end
