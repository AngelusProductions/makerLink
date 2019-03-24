require 'validates_timeliness'

class Meeting < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :zip_code, presence: true
  validates :description, presence: true

  validates_length_of :description, :maximum => 1000
  validates_length_of :zip_code, :is => 5
  validates_time :start_time, :between => ['7:00am', '12:00am']
  validates_time :end_time, :between => ['7:00am', '12:00am']
  validate :date_cannot_be_in_the_past

  def date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:date, "Can't be in the past.")
    end
  end

  belongs_to :maker, presence: true
  belongs_to :makerspace, optional: true

  has_many :makers, optional: true
end
