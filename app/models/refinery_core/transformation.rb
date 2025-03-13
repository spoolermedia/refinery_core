module RefineryCore
  class Transformation < ApplicationRecord
    self.table_name = "transformations"

    belongs_to :article
    belongs_to :prompt

    validates :content, presence: true
  end
end
