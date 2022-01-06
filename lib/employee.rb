#Creates Active Record Employee model, mapped to an employees table at the database

class Employee < ActiveRecord::Base
  belongs_to :store                 #relationship to stores
  validates :first_name, :last_name, :store_id, presence: true #validation
  validates :hourly_rate, numericality: { only_integer: true, in: 40..200 }
end

