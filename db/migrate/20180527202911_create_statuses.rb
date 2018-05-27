class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.integer :status_description, null: false

      t.timestamps
    end
  end
end
