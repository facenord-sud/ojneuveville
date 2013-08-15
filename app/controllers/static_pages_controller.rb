# -*- encoding : utf-8 -*-
class StaticPagesController < ApplicationController

	after_filter :set_back_url

  def home
    @next_event = Event.order('starting_at ASC').where("starting_at > ?", Time.now.utc).first
  end
  
  def help
  end

  def about
  end

  def contact
  end
end
