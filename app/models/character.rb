class Character < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :char_class
  belongs_to :race
end
