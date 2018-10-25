class SessionsController < ApplicationController
  def new #not based on model, so dont actually really need to create anything, just need controller
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password]) #dsl from bcrypt
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      render :new
    end
  end

end
