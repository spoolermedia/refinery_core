class CreateArticles < ActiveRecord::Migration[8.0]
  def change
    create_table :articles do |t|
      t.references :source, null: false, foreign_key: true
      t.string :title
      t.string :url
      t.datetime :published_at
      t.text :content

      t.timestamps
    end
  end
end
