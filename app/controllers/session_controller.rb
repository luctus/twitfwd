class SessionController < ApplicationController
  
  def create
  	user = User.from_omniauth(env["omniauth.auth"])
  	session[:user_id] = user.id
  	redirect_to root_url, notice: "Signed in! Welcome @" + user.nickname
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, notice: "Signed out!"
  end

  def failure
    raise env["omniauth.auth"].to_yaml
  end

end