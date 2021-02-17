class AddExpensesCategoryIdToExpenses < ActiveRecord::Migration[5.2]
  def change
    add_column :expenses, :expenses_category_id, :integer
  end
end
