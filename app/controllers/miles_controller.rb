class MilesController < ApplicationController
  before_action :set_task, only: [:index]

  def index
  end

  def create
   @mile = Mile.new(mile_params)
   if @mile.valid?
       @mile.save
      return redirect_to root_path
    else
      render 'index'
    end
  end

    private

 def set_task
    @task = Task.find(params[:task_id])
 end
 
 def mile_params
   params.permit(:get_mile, :task_id).merge(user_id: current_user.id)
 end
end
