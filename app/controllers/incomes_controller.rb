class IncomesController < ApplicationController

  def index
    @income = Income.new
    @income_categories = IncomeCategory.all
    if params[:month].nil?
      year_month = Date.today.strftime("%Y/%m")
    else
      year_month = params[:month]
    end
    year, month = year_month.split("/").map(&:to_i)
    @incomes = Income
        .where(user_id: current_user.id)
        .where(
        "date >= :start_date AND date <= :end_date",
        {
          start_date: Date.new(year, month, 1),
          end_date: Date.new(year, month, -1)
        }
      )
    @month = month

  end

  def show
  end

  def create
    @income = Income.new(income_params)
    @income.user_id = current_user.id
    @income.save
    redirect_to incomes_path
  end

  def update
  end

  def destroy
  end

  private

  def income_params
    params.require(:income).permit(:category_id, :date, :incomes_amount, :incomes_category_id)
  end

end
