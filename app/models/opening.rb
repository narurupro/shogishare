class Opening < ApplicationRecord
  
  validates :name, presence: true, length: { maximum:20 }
  validates :image_url, presence: true, length: { maximum:50 }
  validates :description, length: { maximum:250 }
  
  has_many :tags
  has_many :tag_maps
  has_many :castlings
  has_many :opening_castlings
  has_many :relational_castlings, through: :opening_castlings, source: :castling
  has_many :game_records
  has_many :opening_game_records
  has_many :relational_game_records, through: :opening_game_records, source: :game_record
  
  def associate_castling(other_castling)
    self.opening_castlings.new(castling_id: other_castling.id)
  end
  
  def associate_game_record_about_opening(other_game_record)
    self.opening_game_records.new(game_record_id: other_game_record.id)
  end

end
