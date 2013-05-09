class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :movie
      t.text :description

      t.timestamps
    end
    add_index :reviews, :movie_id
  end
end
