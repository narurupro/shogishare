class Tag < ApplicationRecord
  validates :name, presence:true, length: { maximum:20 }
  
  has_many :openings
  has_many :tag_maps
  has_many :relational_openings, through: :tag_maps, source: :opening
  has_many :castlings
  has_many :tag_map2s
  has_many :relational_castlings, through: :tag_map2s, source: :castling
  has_many :game_records
  has_many :tag_map3s
  
  
  
  def tag_opening(other_opening)
    self.tag_maps.new(opening_id: other_opening.id)
  end
  
  def tag_castling(other_castling)
    self.tag_map2s.new(castling_id: other_castling.id)
  end
  
end
