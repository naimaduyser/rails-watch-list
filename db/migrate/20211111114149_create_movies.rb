class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :director
      t.string :genre
      t.string :poster_url
      t.string :synopsis
      t.integer :list_id

      t.timestamps
    end
  end
end
