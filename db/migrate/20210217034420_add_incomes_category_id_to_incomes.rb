class AddIncomesCategoryIdToIncomes < ActiveRecord::Migration[5.2]
  def change
    add_column :incomes, :incomes_category_id, :integer
  end
end
