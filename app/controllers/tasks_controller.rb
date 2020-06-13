class TasksController < ApplicationController
  before_action :set_task , only: %i(show edit update destroy)
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to :root
    else
      render action: :new
    end
  end

  def show
  end

  def edit
    @categories = Category.where(user: current_user)
  end

  def update
    if @task.update_attributes(task_params)
      redirect_to :root
    else
      render action: :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to :root
  end

  private
  def task_params
    params.require(:task).permit(:name,:memo,:category_id)
  end

  def set_task
    @task = Task.find_by(id: params[:id])
  end
end
