class Meeting < ApplicationRecord
  validates :name, presence: true
  validates :match_id, presence: true
  validates :date, presence: true
  validates :time, presence: true

  validates_length_of :zip_code, :is => 5

  validate :date_cannot_be_in_the_past

  def date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:date, "Can't be in the past.")
    end
  end

  belongs_to :maker
  belongs_to :makerspace, optional: true

  has_many :makers, optional: true
end
