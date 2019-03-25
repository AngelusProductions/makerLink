class Accessibility < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :makerspaces
end
