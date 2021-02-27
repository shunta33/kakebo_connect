class RenameExpensesCategoryIdColumnToExpenses < ActiveRecord::Migration[5.2]
  def change
    rename_column :expenses, :expenses_category_id, :expense_category_id
  end
end