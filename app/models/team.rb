class Team < ApplicationRecord
  validates :administrator_id, presence: true
  validates :project_id, presence: true

  belongs_to :administrator, presence: true
  belongs_to :project, optional: true

  has_one :leader, presence: true

  has_many :chats
  has_many :makers
  has_many :wanted_ads
  has_many :makerspaces
end
