class GameRecordComment < ApplicationRecord
  belongs_to :game_record
  
  validates :content, presence: true, length: { maximum:255 }
end
