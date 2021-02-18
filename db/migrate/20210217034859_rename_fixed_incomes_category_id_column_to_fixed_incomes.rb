class RenameFixedIncomesCategoryIdColumnToFixedIncomes < ActiveRecord::Migration[5.2]
  def change
    rename_column :fixed_incomes, :fixed_incomes_category_id, :incomes_category_id
  end
end
