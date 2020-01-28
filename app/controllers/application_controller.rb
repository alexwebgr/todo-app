class ApplicationController < ActionController::Base
  helper_method :logged_in, :current_user, :active_tl

  def current_user
    @current_user ||= User.find_by(id: session[:current_user_id])
  end

  def logged_in
    current_user.present?
  end

  def active_tl(id)
    params[:list_id].to_i == id.to_i
  end
end
