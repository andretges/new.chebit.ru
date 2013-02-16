# -*- coding: utf-8 -*-
class PresentationsController < ApplicationController
  def show
    @presentation = Presentation.find(params[:id])
  end

  def index
    @presentations = Presentation.ordered
  end
end
