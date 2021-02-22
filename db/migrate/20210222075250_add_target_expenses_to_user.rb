class AddTargetExpensesToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :target_expenses, :integer
  end
end
