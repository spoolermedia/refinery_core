class CreateRefineryCoreDeliveryLogs < ActiveRecord::Migration[8.0]
  def change
    create_table :delivery_logs do |t|
      t.references :article, foreign_key: true, null: false
      t.references :transformation, foreign_key: true
      t.string :status, null: false # e.g., "delivered", "failed"
      t.text :response_data # Optional storage for API responses

      t.timestamps
    end
  end
end
