class GameRecord < ApplicationRecord
  validates :played_at, presence: true
  validates :title, presence: true, length: { maximum:20 }
  validates :image_url, length: { maximum:50 }
  validates :url , presence: true, length: { maximum:50 }
  
  has_many :openings
  has_many :opening_game_records
  has_many :relational_openings_about_game_records, through: :opening_game_records, source: :opening
  has_many :castlings
  has_many :castling_game_records
  has_many :relational_castilngs_about_game_records, through: :castling_game_records, source: :castling
  has_many :users
  has_many :user_game_records
  has_many :users_have_favorite, through: :user_game_records, source: :user
  has_many :game_record_comments
  has_many :tags
  has_many :tag_map3s
  has_many :shogi_types, through: :tag_map3s, source: :tag
  
  def associate_opening_about_game_record(other_opening)
    self.opening_game_records.new(opening_id: other_opening.id)
  end
  
  def associate_castling_about_game_record(other_castling)
    self.castling_game_records.new(castling_id: other_castling.id)
  end
  
  def tag_game_record(other_tag)
    self.tag_map3s.new(tag_id: other_tag.id)
  end
  
  
end
