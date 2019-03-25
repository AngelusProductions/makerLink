require 'language_filter'

class Comment < ApplicationRecord
  before_save :remove_hateful_language

  validates :name, optional: true, length: { maximum: 100 }
  validates :body, presence: true, length: { maximum: 1000 }
  validates :post_id, presence: true

  belongs_to :post
  belongs_to :maker

  def remove_hateful_language
    hate_filter = LanguageFilter::Filter.new matchlist: :hate, replacement: :garbled
    content = hate_filter.sanitize(content)
  end
end
