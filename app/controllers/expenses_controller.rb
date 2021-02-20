class ExpensesController < ApplicationController

  def index
    @expense = Expense.new
    @expense_categories = ExpenseCategory.all
    year,month = params[:month].split("/").map(&:to_i)
    @expenses = Expense.where(user_id: current_user.id).where("date >= :start_date AND date <= :end_date",{start_date: Date.new(year, month, 1), end_date: Date.new(year, month+1, 1)-1})
    p @expenses
    @month = month

  end

  def show
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.user_id = current_user.id
    @expense.save
    redirect_to expenses_path
  end

  def update
  end

  def destroy
  end

  private

  def expense_params
    params.require(:expense).permit(:category_id, :date, :expenses_amount, :expenses_category_id)
  end
end
