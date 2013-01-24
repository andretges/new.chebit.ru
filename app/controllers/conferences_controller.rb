# -*- coding: utf-8 -*-
class ConferencesController < InheritedResources::Base

  def index
    @conferences = Conference.all
   
    respond_to do |format|
      format.html  # index.html.erb
    end
  end

  def edit
    if current_user
      @conferences = Conference.find(params[:id])
    else
      redirect_to conferences_path, :notice => "Вы должны быть авторизированы"
    end
  end
end
