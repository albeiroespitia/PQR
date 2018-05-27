class CreateExternalFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :external_files do |t|
      t.string :url, null: false

      t.timestamps
    end
  end
end
