class ReportsController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @expense_categories = ExpenseCategory.all
    @income_categories = IncomeCategory.all
    if params[:month].nil?
      year_month = Date.today.strftime("%Y/%m")
    else
      year_month = params[:month]
    end
    year, month = year_month.split("/").map(&:to_i)

    @expenses = Expense
      .where(user_id: params[:id])
      .where(
        "date >= :start_date AND date <= :end_date",
        {
          start_date: Date.new(year, month, 1),
          end_date: Date.new(year, month, -1)
        }
      )

    @incomes = Income
        .where(user_id: params[:id])
        .where(
        "date >= :start_date AND date <= :end_date",
        {
          start_date: Date.new(year, month, 1),
          end_date: Date.new(year, month, -1)
        }
      )

    @month = month



  end


end
