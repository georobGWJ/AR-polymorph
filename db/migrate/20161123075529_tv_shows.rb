class TvShows < ActiveRecord::Migration
  def change
    create_table :tv_shows do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
