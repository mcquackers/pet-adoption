class Employee < ActiveRecord::Base
  has_many :care_relationships
  has_many :animals, through: :care_relationships

  def employee_name
    Rails.cache.fetch([id, :name], expires_in: 5.minutes) do
      name
    end
  end

  def employee_email
    Rails.cache.fetch([id, :email], expires_in: 5.minutes) do
      email
    end
  end
end
