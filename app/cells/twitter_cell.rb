# -*- coding: utf-8 -*-
class TwitterCell < Cell::Rails

  #cache :show, :expires_in => 1.minutes

  def show
    render :locals => { :twitter => twitter = Twitter.search("#чебоксары -rt", :count => 10).results }
  rescue
  end
end
