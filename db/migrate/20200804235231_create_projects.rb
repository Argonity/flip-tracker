class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :type
      t.integer :year_built
      t.integer :square_footage
      t.boolean :pool
      t.boolean :garage
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :purchase_price
      t.integer :sale_price
      t.integer :renovation_budget
      t.integer :profit
      t.integer :current_status
      t.string :nickname
      t.string :description

      t.belongs_to :user, foreign_key: true
      t.belongs_to :contractor, foreign_key: true

      t.timestamps
    end
  end
end
