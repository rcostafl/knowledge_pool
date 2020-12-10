class CreateCategory < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.boolean    :private_category, default: true
      t.string     :name
      t.text       :description
      t.integer    :parent_id
      t.references :user, foreign_key: true
    end
  end
end
