class CreateRefineryCoreDeliveryLogs < ActiveRecord::Migration[8.0]
  def change
    create_table :refinery_core_delivery_logs do |t|
      t.references :article, null: false, foreign_key: true
      t.references :transformation, null: false, foreign_key: true
      t.string :status
      t.text :response_data

      t.timestamps
    end
  end
end
