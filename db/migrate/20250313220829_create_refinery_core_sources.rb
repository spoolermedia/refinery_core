class CreateRefineryCoreSources < ActiveRecord::Migration[8.0]
  def change
    create_table :refinery_core_sources do |t|
      t.string :name
      t.string :fetcher_type
      t.json :config

      t.timestamps
    end
  end
end
