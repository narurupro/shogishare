class GameRecord < ApplicationRecord
  validates :played_at, presence: true
  validates :title, presence: true, length: { maximum:20 }
  validates :image_url, presence: true, length: { maximum:50 }
  validates :url , presence: true, length: { maximum:50 }
  
  has_many :openings
  has_many :opening_game_records
  has_many :relational_openings, through: :opening_game_records, source: :opening
  has_many :castlings
  has_many :castling_game_records
  has_many :relational_castilngs, through: :castling_game_records, source: :castling
  has_many :users
  has_many :user_game_records
  has_many :users_have_favorite, through: :user_game_records, source: :user
  has_many :game_record_comments
  
  def associate_opening_about_game_record(other_opening)
    self.opening_game_records.new(opening_id: other_opening.id)
  end
  
  def associate_castling_about_game_record(other_castling)
    self.castling_game_records.new(castling_id: other_castling.id)
  end
  
  
end
