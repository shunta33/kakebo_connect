class CategoriesController < ApplicationController

  def index
    @categories = ExpenseCategory.all
    @category = ExpenseCategory.new
  end

  def create
    @category = ExpenseCategory.new(category_params)
    @category.save
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:expense_category).permit(:category_name)
  end
end