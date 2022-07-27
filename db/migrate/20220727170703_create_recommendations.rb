class CreateRecommendations < ActiveRecord::Migration[5.2]
  def change
    create_table :recommendations do |t|
      t.integer :media_id
      t.string :media_title
      t.integer :media_type
      t.references :referred_by, foreign_key: { to_table: 'users'}
      t.references :referred_to, foreign_key: { to_table: 'users' }

      t.timestamps
    end
  end
end
