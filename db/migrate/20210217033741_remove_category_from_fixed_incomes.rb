class RemoveCategoryFromFixedIncomes < ActiveRecord::Migration[5.2]
  def change
    remove_column :fixed_incomes, :category, :string
  end
end
