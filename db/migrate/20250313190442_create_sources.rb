class CreateSources < ActiveRecord::Migration[8.0]
  def change
    create_table :sources do |t|
      t.string :name
      t.string :fetcher_type
      t.json :config

      t.timestamps
    end
  end
end
