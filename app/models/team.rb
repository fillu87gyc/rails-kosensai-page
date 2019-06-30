class Team < ApplicationRecord
  belongs_to :user
  has_many :kenbens
  accepts_nested_attributes_for :kenbens
  validates :team_name, presence: true
end
