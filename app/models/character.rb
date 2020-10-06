class Character < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :char_classes
  belongs_to :races
end
