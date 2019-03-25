class Offering < ApplicationRecord
  validates :name, presence: true
  has_many :makerspaces
end
