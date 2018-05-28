class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  belongs_to :department
  has_many :actualTrackings, :class_name => 'PqrTracking', :foreign_key => 'actual_user_id'
  has_many :destTrackings, :class_name => 'PqrTracking', :foreign_key => 'dest_user_id'
  
end
