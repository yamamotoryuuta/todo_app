class CategoryController < ApplicationController
  before_action :set_category, only: %i(edit update)
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params_category)
    if @category.save
      redirect_to :root
    else
      render action: :new
    end
  end

  def edit
  end

  def update
    if @category.update_attributes(params_category)
      redirect_to :root
    else
      render action: :edit
    end
  end

  private

  def params_category
    params.require(:category).permit(:title).merge(user: current_user)
  end

  def set_category
    @category = Category.find_by(id: params[:id])
  end


end
