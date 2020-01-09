class AddDefaultToEventTable < ActiveRecord::Migration[6.0]
  def change
    change_column_default :events, :attended, false
  end
end
