class ApplicationController < ActionController::Base
  helper_method :logged_in, :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:current_user_id])
  end

  def logged_in
    current_user.present?
  end
end
