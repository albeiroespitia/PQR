class CreatePqrs < ActiveRecord::Migration[5.2]
  def change
    create_table :pqrs do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :title, null: false
      t.string :subject, null: false
      t.string :description, null: false
      t.datetime :date, null: false
      t.datetime :responseDate, null: false
      t.references :external_file, foreign_key: true

      t.timestamps
    end
  end
end
