class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]
  
  belongs_to :author
  has_many :elements
  has_one_attached :header_image


  validates :title, presence: true
  validates :description, presence: true, length: { within: 50..250 }

  def should_generate_new_friendly_id?
    title_changed?
  end
end
