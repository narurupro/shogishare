class Castling < ApplicationRecord
   validates :name, presence: true, length: { maximum:20 }
  validates :image_url, length: { maximum:50 }
  
  has_many :tags
  has_many :tag_map2s
  has_many :openings
  has_many :opening_castlings
  has_many :relational_openings, through: :opening_castlings, source: :opening
  has_many :game_records
  has_many :castling_game_records
  has_many :relational_game_records, through: :castling_game_records, source: :game_record
  
  def associate_opening(other_opening)
    self.opening_castlings.new(opening_id: other_opening.id)
  end
  
  def associate_game_record_about_castling(other_game_record)
    self.castling_game_records.new(game_record_id: other_game_record.id)
  end
end
