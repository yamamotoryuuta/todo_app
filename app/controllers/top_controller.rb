class TopController < ApplicationController
  def index
    @category = Category.where(user: current_user)
    @task = Task.all
  end
end
