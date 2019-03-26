class Administrator < ApplicationRecord
  validates :maker_id, presence: true
  validates :makerspace, presence: true

  belongs_to :maker
  belongs_to :makerspace

  has_one :team
end
