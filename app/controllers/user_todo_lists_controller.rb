class UserTodoListsController < ApplicationController
  before_action :set_user_todo_list, only: [:show, :edit, :update, :destroy]

  # GET /user_todo_lists
  # GET /user_todo_lists.json
  def index
    @user_todo_lists = UserTodoList.all
  end

  # GET /user_todo_lists/1
  # GET /user_todo_lists/1.json
  def show
  end

  # GET /user_todo_lists/new
  def new
    @user_todo_list = UserTodoList.new
  end

  # GET /user_todo_lists/1/edit
  def edit
  end

  # POST /user_todo_lists
  # POST /user_todo_lists.json
  def create
    @user_todo_list = UserTodoList.new(user_todo_list_params)

    respond_to do |format|
      if @user_todo_list.save
        format.html { redirect_to @user_todo_list, notice: 'User todo list was successfully created.' }
        format.json { render :show, status: :created, location: @user_todo_list }
      else
        format.html { render :new }
        format.json { render json: @user_todo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_todo_lists/1
  # PATCH/PUT /user_todo_lists/1.json
  def update
    respond_to do |format|
      if @user_todo_list.update(user_todo_list_params)
        format.html { redirect_to @user_todo_list, notice: 'User todo list was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_todo_list }
      else
        format.html { render :edit }
        format.json { render json: @user_todo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_todo_lists/1
  # DELETE /user_todo_lists/1.json
  def destroy
    @user_todo_list.destroy
    respond_to do |format|
      format.html { redirect_to user_todo_lists_url, notice: 'User todo list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_todo_list
      @user_todo_list = UserTodoList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_todo_list_params
      params.require(:user_todo_list).permit(:user_id, :todo_list_id)
    end
end
