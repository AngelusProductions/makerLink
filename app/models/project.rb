class Project < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :city, presence: true
  validates :zip_code, presence: true

  validates_length_of :name, :maximum => 100
  validates_length_of :description, :maximum => 1000
  validates_length_of :zip_code, :is => 5

  belongs_to :administrator, presence: true
  belongs_to :project, optional: true

  has_one :team, null: false

  has_many :chats
  has_many :wanted_ads
  has_many :makerspaces
end
