class Videogames < ActiveRecord::Migration
  def change
    create_table :videogames do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
