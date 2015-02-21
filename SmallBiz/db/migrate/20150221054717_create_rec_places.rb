class CreateRecPlaces < ActiveRecord::Migration
  def change
    create_table :rec_places do |t|
      t.string :name
      t.integer :age
	  t.integer :rating
      t.timestamps null: false
    end
  end
end
