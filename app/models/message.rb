require 'language_filter'

class Message < ApplicationRecord
  before_save :remove_hateful_language

  validates :body, presence: true, allow_blank: false
  validates :direct, presence: true
  validates :sender_id, presence: true

  validates_length_of :body, :within => 1..1000, :too_long => "Too long!", :too_short => "Say something!"

  belongs_to :sender, class_name: 'Maker', foreign_key: 'maker_id', optional: false
  belongs_to :recipient, class_name: 'Maker', foreign_key: 'maker_id', optional: true
  belongs_to :chat, optional: true

  validate :disallow_self_referential_message

  def disallow_self_referential_message
    if sender_id == recipient_id
      errors.add(:recipient_id, 'Cannot message yourself!')
    end
  end

  def remove_hateful_language
    hate_filter = LanguageFilter::Filter.new matchlist: :hate, replacement: :garbled
    content = hate_filter.sanitize(content)
  end
end
