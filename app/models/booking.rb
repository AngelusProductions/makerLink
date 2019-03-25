class Booking < ApplicationRecord
  validates :day, presence: true, :in => 1..31, numericality: { only_integer: true }
  validates :month, presence: true, inclusion: %w(January February March April May June July August September October November December)
  validates :year, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 2019 }
  validates_time :start_time, :between => ['7:00am', '12:00am']
  validates_time :end_time, :between => ['7:00am', '12:00am']
  validates :tool_id, presence: true

  belongs_to :tool
end
