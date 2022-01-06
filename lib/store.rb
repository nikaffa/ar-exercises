#Creates Active Record Store model, mapped to a stores table at the database

class Store < ActiveRecord::Base
  has_many :employees           #relationship to employees
  validates :name, presence: true, length: { minimum: 3 }  #validation
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  
end
