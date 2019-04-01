class Maker < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :first_name, presence: true, length: { maximum: 30 }
  validates :last_name, length: { maximum: 30 }
  validates :gender, inclusion: {in: ["Male", "Female", "Agender", "Androgyne", "Androgynous", "Bigender", "Cis", "Cisgender", "Cis Female", "Cis Male", "Cis Man", "Cis Woman", "Cisgender Female", "Cisgender Male", "Cisgender Man", "Cisgender Woman", "Female to Male", "FTM", "Gender Fluid", "Gender Nonconforming", "Gender Questioning", "Gender Variant", "Genderiueer", "Intersex", "Male to Female", "MTF",  "Neither", "Neutrois", "Non-binary", "Other", "Pangender", "Trans", "Trans*", "Trans Female", "Trans* Female", "Trans Male", "Trans* Male", "Trans Man", "Trans* Man", "Trans Person", "Trans* Person", "Trans Woman", "Trans* Woman", "Transfeminine", "Transgender", "Transgender Female", "Transgender Male", "Transgender Man", "Transgender Person", "Transgender Woman", "Transmasculine", "Transsexual", "Transsexual Female", "Transsexual Male", "Transsexual Man", "Transsexual Person", "Transsexual Woman", "Two-Spirit"]}
  validates :age, presence: true, numericality: { only_integer: true }
  validates_inclusion_of :age, :in => 0..100
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone_number, presence: true
  validates_length_of :bio, :maximum => 1000

  has_one :feed

  belongs_to :administrator, optional: true

  has_many :matches
  has_many :features
  has_many :badges
  has_many :tools
  has_many :chats
  has_many :messages
  has_many :posts
  has_many :comments
  has_many :follows
  has_many :teams
  has_many :projects
  has_many :talents
  has_many :meetings
  has_many :skills, :through => :talents
  has_many :memberships
  has_many :makerspaces, :through => :memberships
end
