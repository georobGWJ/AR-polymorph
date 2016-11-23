class Reviews < ActiveRecord::Migration
  def change
      create_table :reviews do |t|
      t.integer :score
      t.integer :user_id
      t.string :body
      # Normally we would have t.integer :movie_id or something similar
      # For polymorphic we want to reference the reviewable id
      t.references :reviewable, polymorphic: true

      t.timestamps null: false
    end
  end
end
