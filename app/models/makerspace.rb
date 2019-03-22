class Makerspace < ApplicationRecord
  validates :name, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :zip_code, presence: true
  validates_length_of :zip_code, :is => 5
  validates_length_of :mission, :maximum => 1000
  validates :website, url: true

  has_many :memberships
  has_many :payment_plans
  has_many :offerings
  has_many :administrators
  has_many :age_groups
  has_many :accessibilities
  has_many :meetings
end
