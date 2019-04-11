class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.datetime :published_at
      t.string :title

      t.timestamps
    end
  end
end
