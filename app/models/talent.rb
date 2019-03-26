class Talent < ApplicationRecord
  validates :name, presence: true
  validates :level, presence: true, numericality: { only_integer: true }
  validates_inclusion_of :level, :in => 1..10

  validates :maker_id, presence: true
  validates :skill_id, presence: true

  belongs_to :maker
  belongs_to :skill
end
