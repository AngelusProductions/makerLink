class Invite < ApplicationRecord
  validates_length_of :message, maximum: 1000, allow_blank: true

  validates :chat_id, presence: true
  validates :inviter_id, presence: true
  validates :invitee_id, presence: true

  belongs_to :inviter, class_name: 'Maker', foreign_key: 'maker_id', optional: false
  belongs_to :invitee, class_name: 'Maker', foreign_key: 'maker_id', optional: false
  belongs_to :chat, optional: false

  validate :disallow_self_referential_invite

  def disallow_self_referential_invite
    if inviter_id == invitee_id
      errors.add(:invitee_id, 'Cannot invite yourself!')
    end 
  end
end
