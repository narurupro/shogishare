class Castling < ApplicationRecord
   validates :name, presence: true, length: { maximum:20 }
  validates :image_url, presence: true, length: { maximum:50 }
  
  has_many :tags
  has_many :tag_map2s
  has_many :openings
  has_many :opening_castlings
  has_many :relational_openings, through: :opening_castlings, source: :opening
  
  def associate_opening(other_opening)
    self.opening_castlings.new(opening_id: other_opening.id)
  end
end
