class Leader < ApplicationRecord
  validates :maker_id, presence: true
  validates :project_id, presence: true

  belongs_to :maker
  belongs_to :project

  has_one :team
end
