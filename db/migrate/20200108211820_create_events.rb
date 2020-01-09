class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :date
      t.boolean :attended
      t.references :page, null: false, foreign_key: true

      t.timestamps
    end
  end
end
