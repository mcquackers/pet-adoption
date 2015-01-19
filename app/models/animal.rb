class Animal < ActiveRecord::Base
  has_many :care_relationships
  has_many :caretakers, through: :care_relationships, source: :employee

  def animal_name
    Rails.cache.fetch([id, name], expires_in: 5.minutes) do
      name
    end
  end

  def animal_age
    Rails.cache.fetch([id, age], expires_in: 5.minutes) do
      age
    end
  end

  def animal_breed
    Rails.cache.fetch([id, breed], expires_in: 5.minutes) do
      breed
    end
  end

  def animal_color
    Rails.cache.fetch([id, color], expires_in: 5.minutes) do
      color
    end
  end
end
