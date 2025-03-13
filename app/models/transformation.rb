class Transformation < ApplicationRecord
  belongs_to :article
  belongs_to :prompt

  validates :content, presence: true
end
