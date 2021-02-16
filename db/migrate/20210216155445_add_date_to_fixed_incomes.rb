class AddDateToFixedIncomes < ActiveRecord::Migration[5.2]
  def change
    add_column :fixed_incomes, :date, :date
  end
end
