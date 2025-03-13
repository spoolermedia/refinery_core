class Source < ApplicationRecord
  has_many :articles, dependent: :destroy

  enum fetcher_type: { rss: 'rss', ap_news: 'ap_news', custom: 'custom' }

  validates :name, presence: true, uniqueness: true
  validates :fetcher_type, presence: true

  # config field will store connection details (e.g., RSS URL, API key)
  serialize :config, JSON
end
