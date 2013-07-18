# -*- encoding : utf-8 -*-
class RolesController < ApplicationController

	after_filter :set_back_url

  # GET /roles/1
  # GET /roles/1.json
  def show
    @role = Role.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @role }
    end
  end
end
