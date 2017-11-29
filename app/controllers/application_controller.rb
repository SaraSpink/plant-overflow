class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def authorize_admin
    if current_user.admin === true
      redirect_to questions_path
    else
      flash[:alert] = "Only an admin can visit this page."
      redirect_to '/'
    end
  end

  def authorize
    if !current_user
      flash[:alert] = "Please sign in to visit this page."
      redirect_to '/'
    end
  end

end
