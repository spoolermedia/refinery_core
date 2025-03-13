module RefineryCore
  class Article < ApplicationRecord
    self.table_name = "articles"

    belongs_to :source
  end
end
