class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.references :host, null: false, foreign_key: { to_table: :users } 
      t.string :title, null: false 
      t.text :about
      t.string :address_line
      #t.string :1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.decimal :lat, precision: 10, scale: 6
      t.decimal :lng, precision: 10, scale: 6 
      t.integer :status, default: 0 #0 = listing is a draft, 1 = published, 2 = rejected etc 
      t.timestamps
    end
  end
end
