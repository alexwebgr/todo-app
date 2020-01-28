class SessionsController < ApplicationController
  def register
  end

  def do_register
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html do
          session[:current_user_id] = @user.id
          flash[:success] = 'User was successfully created.'
          redirect_to dashboard_index_path, status: :created
        end
      else
        format.js do
          flash.now[:danger] = @user.errors.full_messages
          render partial: 'shared/flash_renderer', status: :unprocessable_entity
        end
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :full_name, :avatar)
    end
end
