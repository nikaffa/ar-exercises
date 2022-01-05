#Creates Active Record Employee model, mapped to an employees table at the database

class Employee < ActiveRecord::Base
  belongs_to :store                 #relationship to stores
end
