class Prompt < ApplicationRecord
  has_many :transformations, dependent: :destroy

  validates :instruction, presence: true
end
