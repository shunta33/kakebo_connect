class RenameIncomesCategoryIdColumnToIncomes < ActiveRecord::Migration[5.2]
  def change
    rename_column :incomes, :incomes_category_id, :income_category_id
  end
end
