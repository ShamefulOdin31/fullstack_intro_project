class CharClass < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :characters
end
