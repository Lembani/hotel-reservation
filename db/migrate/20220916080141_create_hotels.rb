class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.string :country
      t.string :category
      t.string :city
      t.text :address
      t.string :image_url

      t.timestamps
    end
  end
end
