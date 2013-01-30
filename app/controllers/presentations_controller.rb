# -*- coding: utf-8 -*-
class PresentationsController < ApplicationController
layout "presentation"

  def index
    redirect_to "/"
  end

  def show
    @presentation = Presentation.find(params[:id])
  end
end