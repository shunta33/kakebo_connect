class ChangeCategoriesToExpenseCategories < ActiveRecord::Migration[5.2]
  def change
    rename_table :categories, :expense_categories
  end
end
