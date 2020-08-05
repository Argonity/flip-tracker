class CreateContractors < ActiveRecord::Migration[6.0]
  def change
    create_table :contractors do |t|
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
