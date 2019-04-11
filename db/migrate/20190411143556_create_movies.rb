class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.integer :id
      t.datetime :published_at
      t.String :Title

      t.timestamps
    end
  end
end
