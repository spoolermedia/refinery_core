class Article < ApplicationRecord
  belongs_to :source
  has_many :transformations, dependent: :destroy

  validates :title, :url, :published_at, presence: true
  validates :url, uniqueness: true
end
