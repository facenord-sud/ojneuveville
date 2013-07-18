# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = t(:access_denied)
    redirect_back_or(main_app.root_path)
  end

	before_filter :set_locale
  before_filter :check_user
  
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def set_back_url
    store_location
  end

  def check_user
    if signed_in?
      user = current_user
      if (user.has_role? "organizator" or user.has_role? "admin") and user.contact.nil?
        flash[:warning] = t "complete", :href =>edit_user_path(user)
      end
    end
  end

  protect_from_forgery

  include SessionsHelper

  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end
end
