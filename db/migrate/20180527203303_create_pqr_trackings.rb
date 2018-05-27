class CreatePqrTrackings < ActiveRecord::Migration[5.2]
  def change
    create_table :pqr_trackings, id:false do |t|
      t.references :pqr, foreign_key: true, null: false
      t.references :actual_user, null: false
      t.references :dest_user, null: false
      t.references :status, foreign_key: true, null: false
      t.references :department, foreign_key: true
      t.datetime :date, null: false
      t.string :review
      t.string :response

      t.timestamps
    end

    add_foreign_key :pqr_trackings, :users, column: :actual_user_id, primary_key: :id
    add_foreign_key :pqr_trackings, :users, column: :dest_user_id, primary_key: :id
  end
end
