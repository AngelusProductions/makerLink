class Tool < ApplicationRecord
  validates :name, presence: true
  validates :city, presence: true
  validates :danger, presence: true
  validates_inclusion_of :danger, :in => 0..10
  validates_length_of :description, :maximum => 1000
  validates :maker_id, presence: true

  belongs_to :maker

  has_one :schedule
end
