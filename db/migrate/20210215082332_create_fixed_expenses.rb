class CreateFixedExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :fixed_expenses do |t|
      t.integer :user_id
      t.string :category
      t.integer :fixed_expenses_amount

      t.timestamps
    end
  end
end
