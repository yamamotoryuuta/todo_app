class CategoryController < ApplicationController
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

  end

  private

  def params_category
    params.require(:category).permit(:title).merge(user: current_user)
  end


end
