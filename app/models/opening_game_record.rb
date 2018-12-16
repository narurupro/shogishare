class OpeningGameRecord < ApplicationRecord
  belongs_to :opening
  belongs_to :game_record
end
