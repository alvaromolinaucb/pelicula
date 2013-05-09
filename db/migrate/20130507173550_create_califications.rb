class CreateCalifications < ActiveRecord::Migration
  def change
    create_table :califications do |t|
      t.references :movie
      t.integer :value

      t.timestamps
    end
    add_index :califications, :movie_id
  end
end
