class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  	@user = User.new
    @admin_password = AdminPassword.new
  end

  def create
  	@user = User.new(params[:user])
    @admin_password = AdminPassword.new(params[:admin_password])
    @user.valid?
  	if @admin_password.valid? and @user.save
  		redirect_to team_path
  	else
  		render 'new'
  	end
  end

  def show
    @user = User.find(params[:id])
  end
end
