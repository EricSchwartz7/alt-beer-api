class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :ibu
      t.string :alcohol

      t.timestamps
    end
  end
end
