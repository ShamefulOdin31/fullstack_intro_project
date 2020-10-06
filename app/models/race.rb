class Race < ApplicationRecord
  validates :race, presence: true, uniqueness: true
  has_many :characters
end
