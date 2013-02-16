# -*- coding: utf-8 -*-
class ConferencesController < ApplicationController
  def index
    @anounce_conference = Conference.where(:anounce=>true).first
    @conferences = Conference.ordered
  end

  def show
    @conference = Conference.find(params[:id])
  end
end
