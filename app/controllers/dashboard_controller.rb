class DashboardController < ApplicationController
  before_action :set_todo, only: [:toggle_completed, :destroy_todo]
  def index
    @todos = []
    return unless params[:list_id]

    @todo_list = current_user.todo_lists.where(id: params[:list_id]).first
    @todos = @todo_list.todos if @todo_list
  end

  def create_todo
  end

  def do_create_todo
    @todo = Todo.new(todo_params)

    respond_to do |format|
      if @todo.save
        format.js
      else
        format.js do
          flash.now[:danger] = @todo.errors.full_messages
          render partial: 'shared/flash_renderer', status: :unprocessable_entity
        end
      end
    end
  end

  def destroy_todo
    @todo.destroy
  end

  def toggle_completed
    @todo.update_attribute(:completed, !@todo.completed)
  end

  def assign_user
    session[:current_user_id] = params[:user_id] if params[:user_id]
    redirect_to dashboard_index_path
  end

  private

  def todo_params
    params.require(:todo).permit(:content, :todo_list_id)
  end

  def set_todo
    todo_list = current_user.todo_lists.find(params[:list_id])
    @todo = todo_list.todos.find(params[:todo_id])
  end
end
