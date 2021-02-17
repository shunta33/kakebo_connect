class AddFixedExpensesCategoryIdToFixedExpenses < ActiveRecord::Migration[5.2]
  def change
    add_column :fixed_expenses, :fixed_expenses_category_id, :integer
  end
end
