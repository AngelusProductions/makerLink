class Badge < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates_length_of :description, :maximum => 1000
  validates :maker_id, presence: true

  belongs_to :maker
end
