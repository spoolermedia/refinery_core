module RefineryCore
  class Prompt < ApplicationRecord
    self.table_name = "prompts"

    has_many :transformations, dependent: :destroy

    validates :instruction, presence: true
  end
end
