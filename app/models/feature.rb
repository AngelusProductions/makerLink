class Feature < ApplicationRecord
  validates :description, presence: true
  validates :name, presence: true
  validates_length_of :name, :within => 1..100, :too_long => "Too long!"

  validates :maker_id, presence: true
  validates :project_id, presence: true

  belongs_to :maker
  belongs_to :project
end
