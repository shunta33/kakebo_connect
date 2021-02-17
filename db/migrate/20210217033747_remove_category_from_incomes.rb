class RemoveCategoryFromIncomes < ActiveRecord::Migration[5.2]
  def change
    remove_column :incomes, :category, :string
  end
end
