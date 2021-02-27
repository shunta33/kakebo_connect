class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @expense = Expense.new
    @expense_categories = ExpenseCategory.all
    if params[:month].nil?
      year_month = Date.today.strftime("%Y/%m")
    else
      year_month = params[:month]
    end
    year, month = year_month.split("/").map(&:to_i)
    @expenses = Expense
      .where(user_id: current_user.id)
      .where(
        "date >= :start_date AND date <= :end_date",
        {
          start_date: Date.new(year, month, 1),
          end_date: Date.new(year, month, -1)
        }
      )
    @month = month
    @year = year

  end

  def show
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.user_id = current_user.id
    @expense.save!
    redirect_to expenses_path
  end

  def update
  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.delete
    redirect_to expenses_path
  end

  private

  def expense_params
    params.require(:expense).permit(:category_id, :date, :expenses_amount, :expense_category_id)
  end
end
