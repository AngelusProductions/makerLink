class Booking < ApplicationRecord
  validates :start_datetime, presence: true, :in => 1..31, numericality: { only_integer: true }
  validates :end_datetime, presence: true, :in => 1..31, numericality: { only_integer: true }
  validate :start_datetime_cannot_be_in_the_past
  validate :end_datetime_cannot_be_before_start_datetime

  def start_datetime_cannot_be_in_the_past
    if :start_datetime < Date.today
      errors.add(:start_datetime, "Can't be in the past.")
    end
  end

  def end_datetime_cannot_be_before_start_datetime
    if :end_datetime < :start_datetime
      errors.add(:start_datetime, "Can't be in the past.")
    end
  end

  validates :maker_id, presence: true
  validates :tool_id, presence: true

  belongs_to :maker
  belongs_to :tool
end
