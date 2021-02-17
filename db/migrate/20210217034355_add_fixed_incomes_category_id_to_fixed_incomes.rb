class AddFixedIncomesCategoryIdToFixedIncomes < ActiveRecord::Migration[5.2]
  def change
    add_column :fixed_incomes, :fixed_incomes_category_id, :integer
  end
end
