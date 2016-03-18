class HomeController < ApplicationController
  protect_from_forgery with: :exception
  def index

  end

  def callback
    auth = request.env['omniauth.auth']
    user = User.where(provider: auth["provider"], uid: auth["uid"]).first || User.create(provider: auth["provider"], uid: auth["uid"], name: auth["info"]["name"])
    session[:user_id] = user.id
    session[:provider] = auth["provider"]
    redirect_to root_path, notice: "Successfully signed in!!"
  end

  def doorkeeper_callback
    auth = request.env['omniauth.auth']
    user = User.where(provider: auth["provider"], uid: auth["uid"]).first || User.create(provider: auth["provider"], uid: auth["uid"], name: auth["info"]["first_name"])
    session[:user_id] = user.id
    session[:provider] = auth["provider"]
    redirect_to root_path, notice: "Successfully signed in!!"
  end

  def sign_out
    session[:user_id] = nil
    session[:provider] = nil
    redirect_to root_path, notice: "Successfully Signed out!!"
  end
end
