class Animal < ActiveRecord::Base
  has_many :care_relationships
  has_many :caretakers, through: :care_relationships, source: :employee
end
