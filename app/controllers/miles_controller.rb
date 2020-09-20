class MilesController < ApplicationController
  before_action :set_task, only: [:index]

  def index
  end

    private

 def set_task
    @task = Task.where(id: params[:task_id])
 end
    
end
