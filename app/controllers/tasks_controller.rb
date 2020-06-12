class TasksController < ApplicationController
  def new
    @task = Task.new
    @category = Category.find(1)
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to :root
    else
      render action: :new
    end
  end

  def edit
    
  end

  def update
    
  end

  private
  def task_params
    params.require(:task).permit(:name,:memo,:category_id)
  end
end
