class CreateRefineryCoreTransformations < ActiveRecord::Migration[8.0]
  def change
    create_table :transformations do |t|
      t.references :article, foreign_key: true, null: false
      t.references :prompt, foreign_key: true, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
