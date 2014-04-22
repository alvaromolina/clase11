class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :movies
      t.text :text

      t.timestamps
    end
  end
end
