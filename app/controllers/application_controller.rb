# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = t(:access_denied)
    redirect_back_or(main_app.root_path)
  end

	before_filter :set_locale
  
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  protect_from_forgery
  include SessionsHelper

  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end
end
