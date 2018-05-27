class PqrTracking < ApplicationRecord
  belongs_to :pqr
  belongs_to :actual_user, :class_name => 'User'
  belongs_to :dest_user, :class_name => 'User'
  belongs_to :status
  belongs_to :department
end
