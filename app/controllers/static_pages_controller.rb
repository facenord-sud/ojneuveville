# -*- encoding : utf-8 -*-
class StaticPagesController < ApplicationController

	after_filter :set_back_url

  def home
  end
  
  def help
  end

  def about
  end

  def contact
  end
end
