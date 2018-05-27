class CreatePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :permissions do |t|
      t.string :description, null: false

      t.timestamps
    end
  end
end
