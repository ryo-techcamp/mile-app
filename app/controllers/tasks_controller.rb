class TasksController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path ,notice: '記事が投稿されました'
    else
      render :new
    end  
  end

  private

  def task_params
    params.require(:task).permit(:image, :name, :description, :price)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
