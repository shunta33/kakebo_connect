class RemoveCategoryFromFixedExpenses < ActiveRecord::Migration[5.2]
  def change
    remove_column :fixed_expenses, :category, :string
  end
end
