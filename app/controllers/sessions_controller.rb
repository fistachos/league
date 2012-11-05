class SessionsController < ApplicationController
  def new
  end

  def create
    user = login(params[:username],params[:password])
    if user
      redirect_back_or_to root_path, :notice => "Zalogowano."
    else
      flash.now.alert = "Logowanie nie powiodlo sie."
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path, :notice => "Wylogowano."
  end
end
