class Match < ApplicationRecord
  validates :maker_id, presence: true
  validates :match_id, presence: true

  belongs_to :maker, class_name: 'Maker', foreign_key: 'maker_id', optional: false
  belongs_to :match, class_name: 'Maker', foreign_key: 'maker_id', optional: false

  validate :disallow_self_referential_match

  def disallow_self_referential_match
    if maker_id == match_id
      errors.add(:match_id, 'cannot match with yourself')
    end
  end
end
