class CategoriesController < ApplicationController

  def index
    @categories = IncomeCategory.all
    @category = IncomeCategory.new
  end

  def create
    @category = IncomeCategory.new(category_params)
    @category.save
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:income_category).permit(:category_name)
  end
end