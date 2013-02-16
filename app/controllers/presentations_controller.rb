# -*- coding: utf-8 -*-
class PresentationsController < ApplicationController
  layout "presentation"

  def show
    @presentation = Presentation.find(params[:id])
  end
end
