class Kenben < ApplicationRecord
  belongs_to :team
  validates :name, presence: true
  validates :age, presence: true
  validates :sex, presence: true
  validates :phonetic, presence: true
  validates :class_name, presence: true
end
