require 'language_filter'

class Post < ApplicationRecord
  before_save :remove_hateful_language

  validates :name, optional: true, length: { maximum: 100 }
  validates :body, presence: true, length: { maximum: 1000 }
  validates :link, optional: true, format: { with: URI::regexp }
  validates :maker_id, presence: true

  belongs_to :maker

  has_many :comments

  def remove_hateful_language
    hate_filter = LanguageFilter::Filter.new matchlist: :hate, replacement: :garbled
    content = hate_filter.sanitize(content)
  end
end
