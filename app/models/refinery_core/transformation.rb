module RefineryCore
  class Transformation < ApplicationRecord
    self.table_name = "transformations"

    belongs_to :article
    belongs_to :prompt
  end
end
