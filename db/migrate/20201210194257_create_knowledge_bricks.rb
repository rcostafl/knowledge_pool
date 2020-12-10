class CreateKnowledgeBricks < ActiveRecord::Migration[6.0]
  def change
    create_table :knowledge_bricks do |t|
      t.string     :title
      t.string     :knowledge_type
      t.text       :description
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
