class Element < ApplicationRecord
  belongs_to :post
  has_rich_text :content

  validates :element_type, inclusion: { in: %w[paragraph image video-embed]}
end
