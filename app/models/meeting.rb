require 'validates_timeliness'

class Meeting < ApplicationRecord
  validates :name, presence: true
  validates :start_datetime, presence: true
  validates :end_datetime, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :zip_code, presence: true
  validates :description, presence: true

  validates_length_of :description, :maximum => 1000
  validates_length_of :zip_code, :is => 5
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

  belongs_to :maker, presence: true
  belongs_to :makerspace, optional: true

  has_many :makers, optional: true
end
