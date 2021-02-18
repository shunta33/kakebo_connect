class RenameFixedExpensesCategoryIdColumnToFixedExpenses < ActiveRecord::Migration[5.2]
  def change
    rename_column :fixed_expenses, :fixed_expenses_category_id, :expense_category_id
  end
end
