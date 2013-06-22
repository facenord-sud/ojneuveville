# -*- encoding : utf-8 -*-
class UsersController < ApplicationController

load_and_authorize_resource

  before_filter :find_user, only:[:edit, :show]

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = t :greetings
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update

    @user.name = params[:user][:name]
    if @user.save
      flash[:success] = t "users.update.success"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end


  private

    def find_user
      @user = User.find(params[:id])
    end
end
