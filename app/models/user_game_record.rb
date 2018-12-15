class UserGameRecord < ApplicationRecord
  belongs_to :user
  belongs_to :game_record
end
