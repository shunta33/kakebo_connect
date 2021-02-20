class AddUserIdToIncomeCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :income_categories, :user_id, :integer
  end
end
