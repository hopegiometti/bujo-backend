class CreateJournals < ActiveRecord::Migration[6.0]
  def change
    create_table :journals do |t|
      t.integer :year
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
