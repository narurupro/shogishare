class User < ApplicationRecord
   before_save { self.email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  validates :description, length: { maximum: 100 }         
  validates :shogi_appid, length: { maximum:20 }
  
  has_secure_password
  
  has_many :game_records
  has_many :user_game_records
  has_many :favorite_game_records, through: :user_game_records, source: :game_record
  
  def like(other_game_record)
      self.user_game_records.find_or_create_by(game_record_id: other_game_record.id)
  end
  
  def unlike(other_game_record)
    user_game_record = self.user_game_records.find_by(game_record_id: other_game_record.id)
    user_game_record.destroy if user_game_record
  end
  
  def like?(other_game_record)
    self.favorite_game_records.include?(other_game_record)
  end
  
end
