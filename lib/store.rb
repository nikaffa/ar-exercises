#Creates Active Record Store model, mapped to a stores table at the database

class Store < ActiveRecord::Base
  has_many :employees           #relationship to employees
end
