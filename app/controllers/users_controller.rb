class UsersController < ApplicationController
  respond_to :html

  before_filter :require_login, :only => :new, :create

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to root_url, :notice => "Signed up!"
  	else
  		render :new
  	end
  end
end
