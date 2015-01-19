class Employee < ActiveRecord::Base
  has_many :care_relationships
  has_many :animals, through: :care_relationships
end
