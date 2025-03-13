class CreateRefineryCorePrompts < ActiveRecord::Migration[8.0]
  def change
    create_table :refinery_core_prompts do |t|
      t.text :instruction

      t.timestamps
    end
  end
end
