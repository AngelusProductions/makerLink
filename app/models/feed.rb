class Feed < ApplicationRecord
  belongs_to :maker
  has_many :posts
end
