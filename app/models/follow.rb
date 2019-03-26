class Follow < ApplicationRecord
  validates :follower_id, presence: true
  validates :following_id, presence: true

  belongs_to :follower, class_name: 'Maker', foreign_key: 'maker_id', optional: false
  belongs_to :following, class_name: 'Maker', foreign_key: 'maker_id', optional: false

  validate :disallow_self_referential_follow

  def disallow_self_referential_follow
    if :follower_id == :following_id
      errors.add(:following_id, 'Cannot follow yourself, silly.')
    end
  end
end
