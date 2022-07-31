class CreateRecommendations < ActiveRecord::Migration[5.2]
  def change
    create_table :recommendations do |t|
      t.integer :media_id
      t.string :title
      t.integer :media_type, default: 0
      t.integer :recommended_by_id 
      t.integer :status, default: 0
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
