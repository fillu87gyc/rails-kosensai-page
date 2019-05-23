class Kenben < ApplicationRecord
  belongs_to :team
  validates :team_id, presence: true
end
