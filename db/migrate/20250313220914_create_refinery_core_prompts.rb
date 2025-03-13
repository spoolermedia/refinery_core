class CreateRefineryCorePrompts < ActiveRecord::Migration[8.0]
  def change
    create_table :prompts do |t|
      t.text :instruction, null: false

      t.timestamps
    end
  end
end
