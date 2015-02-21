class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :description
      t.integer :ibu
      t.integer :abv

      t.timestamps null: false
    end
  end
end
