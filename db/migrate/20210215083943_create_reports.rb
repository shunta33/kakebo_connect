class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.boolean :is_upload, default: false
      t.integer :like
      t.text :comment

      t.timestamps
    end
  end
end
