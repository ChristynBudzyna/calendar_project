class UsersController < ApplicationController

def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
    redirect_to events_path
    session[:user_id] = @user.id
  else
    render 'new'
  end
end

def show
  @user = User.find(params[:id])
  @favorites = @user.events
end

private
  def user_params
    params.require(:user).permit(:email, :password, :role, :admin?)
  end

end
