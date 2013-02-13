# -*- coding: utf-8 -*-
class TwitterCell < Cell::Rails

  cache :show, :expires_in => 10.minutes

  def show
    twitter = Twitter.search("#чебоксары -rt", :count => 10).results
    render :locals => { :twitter => twitter }
  end
end
