class SessionsController < ApplicationController

def new
end

def create
  @user = User.find_by(email: params[:sessions][:email])
  if @user && @user.authenticate(params[:sessions][:password])
    session[:user_id] = @user.id
    redirect_to events_path
  else
    flash.now[:error] = "Invalid e-mail/password combination"
    render 'new'
  end
end

def destroy
  session.delete(:user_id)
  @current_user = nil
  redirect_to events_path
end

end
