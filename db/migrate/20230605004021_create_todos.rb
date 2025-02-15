class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end