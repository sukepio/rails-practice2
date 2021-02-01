class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(emaill: session_params[:email])
    
    if user&.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: 'ログインしました。'
    else
      render :new
    end
  end
  
  def destroy
    reset_session
    redirect_to root_url, notice: 'ログアウトしました。'
  end
  
  private
  
  def session_params
    params.require(:user).permit(:name, :password)
  end
end
