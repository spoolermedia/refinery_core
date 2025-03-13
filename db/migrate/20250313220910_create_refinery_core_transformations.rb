class CreateRefineryCoreTransformations < ActiveRecord::Migration[8.0]
  def change
    create_table :refinery_core_transformations do |t|
      t.references :article, null: false, foreign_key: true
      t.references :prompt, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
