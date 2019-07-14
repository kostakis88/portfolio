class AddPositionToHighlights < ActiveRecord::Migration[5.2]
  def change
    add_column :highlights, :position, :integer
  end
end
