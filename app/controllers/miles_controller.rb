class MilesController < ApplicationController
  before_action :set_task, only: [:index,:show]
  def index
  end

  def create
   @mile = Mile.new(mile_params)
   if @mile.valid?
      @mile.save
      return redirect_to task_mile_path(id: @mile.id) 
    else
      render 'index'
    end
  end

  def show
  # @mile = Mile.where(id: params[:id])
  @mile = Mile.all
  end

    private

 def set_task
    @task = Task.find(params[:task_id])
 end
 
 def mile_params
   params.permit(:get_mile, :task_id).merge(user_id: current_user.id)
 end
end
