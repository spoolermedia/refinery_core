class CreateRefineryCoreSources < ActiveRecord::Migration[8.0]
  def change
    create_table :sources do |t|
      t.string :name, null: false, unique: true
      t.string :fetcher_type, null: false # 'rss', 'ap_news', etc.
      t.json :config, default: {}

      t.timestamps
    end
  end
end
