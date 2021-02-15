class CreateFixedIncomes < ActiveRecord::Migration[5.2]
  def change
    create_table :fixed_incomes do |t|
      t.integer :user_id
      t.string :category
      t.integer :fixed_incomes_amount

      t.timestamps
    end
  end
end
