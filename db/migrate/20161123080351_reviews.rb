class Reviews < ActiveRecord::Migration
  def change
      create_table :reviews do |t|
      t.integer :score
      t.integer :user_id
      t.string :body
      t.references :reviewable, polymorphic: true

      t.timestamps null: false
    end
  end
end 
