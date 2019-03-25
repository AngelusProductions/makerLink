class Payment_Plan < ApplicationRecord
  validates :name, presence: true
  validates :type, presence: true, length: { maximum: 100 }
  validates :description, optional: true, length: { maximum: 1000 }
  validates :makerspace_id, presence: true

  validates :amount, numericality: { only_integer: true }

  validates :frequency, inclusion: { in: %w(Weekly Bi-weekly Monthly Annually Per-Visit),
    message: "%{value} is not a valid size" }

  belongs_to :makerspace, null: false
  belongs_to :membership, optional: true
end
