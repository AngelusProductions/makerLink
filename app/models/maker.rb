class Maker < ApplicationRecord
  validates :username, presence: true
  validates :first_name, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates_inclusion_of :age, :in => 0..100
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone_number, numericality: { only_integer: true }
  validates_length_of :bio, :maximum => 1000

  has_one :feed

  has_many :memberships
  has_many :matches
  has_many :talents
  has_many :tools
  has_many :chats
  has_many :messages
  has_many :posts
  has_many :comments
  has_many :follows
end
