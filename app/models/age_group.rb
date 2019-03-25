class Age_Group < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :minimum_age, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :minimum_age, presence: true, numericality: { only_integer: true, less_than: 110 }

  has_many :makerspaces
end
