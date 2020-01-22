class CreateStreaks < ActiveRecord::Migration[6.0]
  def change
    create_table :streaks do |t|
      t.integer :date
      t.references :habit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
