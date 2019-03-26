class Membership < ApplicationRecord
  validates :maker_id, presence: true
  validates :makerspace_id, presence: true
  validates :payment_plan_id, presence: true

  belongs_to :maker
  belongs_to :makerspace

  has_one :payment_plan
end
