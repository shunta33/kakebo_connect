class CategoriesController < ApplicationController

  def index
    @category = ExpenseCategory.new
    @categories = ExpenseCategory.all
  end

  def create
    @category = ExpenseCategory.new(category_params)
    @category.save
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:category_name)
  end


end
