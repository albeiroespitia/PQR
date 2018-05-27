class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.string :action, null: false
      t.datetime :date, null: false
      t.string :table, null: false

      t.timestamps
    end
  end
end
