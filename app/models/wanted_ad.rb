class Wanted_Ad < ApplicationRecord
  validates :description, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :zip_code, presence: true

  validates_length_of :description, :maximum => 1000
  validates_length_of :zip_code, :is => 5

  belongs_to :maker, presence: true
  belongs_to :project, optional: true

  has_many :skills
end
