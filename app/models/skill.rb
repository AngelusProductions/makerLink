class Skill < ApplicationRecord
  validates :name, presence: true
  validates_length_of :name, :within => 1..100, :too_long => "Too long!", :too_short => "Say something!"

  has_many :makers
end
