class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :date
      t.boolean :completed
      t.references :page, null: false, foreign_key: true

      t.timestamps
    end
  end
end
