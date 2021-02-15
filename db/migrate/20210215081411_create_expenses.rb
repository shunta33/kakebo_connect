class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.integer :user_id
      t.string :category
      t.integer :expenses_amount

      t.timestamps
    end
  end
end
