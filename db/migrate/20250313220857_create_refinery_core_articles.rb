class CreateRefineryCoreArticles < ActiveRecord::Migration[8.0]
  def change
    create_table :articles do |t|
      t.references :source, foreign_key: true, null: false
      t.string :title, null: false
      t.string :url, null: false, unique: true
      t.datetime :published_at
      t.text :content

      t.timestamps
    end
  end
end
