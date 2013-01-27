# -*- coding: utf-8 -*-
class ConferencesController < InheritedResources::Base

  def index
    @conferences = Conference.all
    @conf = Conference.all.sort { |x, y| y.date_conference <=> x.date_conference }.first.title
  end

  def new
    if current_user
      @conferences = Conference.new
    else
      redirect_to conferences_path, :notice => "Вы должны быть авторизированы"
    end
  end

  def show
    @conference = Conference.find(params[:id])
    @conf = Conference.find(params[:id]).title
  end

  def edit
    if current_user
      @conferences = Conference.find(params[:id])
    else
      redirect_to conferences_path, :notice => "Вы должны быть авторизированы"
    end
  end

  def destroy
    @conferences = Conference.find(params[:id])
    @conferences.destroy

    respond_to do |format|
      format.html { redirect_to conferences_url }
    end
  end
end
