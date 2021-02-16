class AddDateToFixedExpenses < ActiveRecord::Migration[5.2]
  def change
    add_column :fixed_expenses, :date, :date
  end
end
