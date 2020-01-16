class AddDefaultToEventTable < ActiveRecord::Migration[6.0]
  # def change
  #   change_column :events, :attended, false, from: nil, to: false
  # end

  def up
    change_column_default(:events, :attended, false)
  end
  
  def down
    change_column_default(:events, :attended, nil)
  end
end
