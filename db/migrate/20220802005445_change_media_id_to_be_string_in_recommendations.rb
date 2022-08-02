class ChangeMediaIdToBeStringInRecommendations < ActiveRecord::Migration[5.2]
  def change
    change_column :recommendations, :media_id, :string
  end
end
