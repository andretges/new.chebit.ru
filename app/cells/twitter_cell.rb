# -*- coding: utf-8 -*-
class TwitterCell < Cell::Rails

  cache :show, :expires_in => 10.minutes

  def show
    twitter = Twitter.search("#chebit -rt", :count => 10).results
    twitter = Twitter.search("#чебоксары -rt", :count => 10).results if twitter.empty?

    render :locals => { :twitter => twitter }
  rescue
  end
end
