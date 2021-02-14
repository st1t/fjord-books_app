class UsersController < ApplicationController
  def index
    @users = User.order(:email).page(params[:page]).per(5)
  end
end
