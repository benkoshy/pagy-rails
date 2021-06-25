class CreateAltMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :alt_movies do |t|
      t.string :name
      t.timestamps
    end
  end
end
