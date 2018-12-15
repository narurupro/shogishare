class CastlingGameRecord < ApplicationRecord
  belongs_to :castling
  belongs_to :game_record
end
