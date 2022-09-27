class CreateDonuts < ActiveRecord::Migration[6.1]
  def change
    create_table :donuts do |t|
      t.string :name
      t.string :coating
      t.string :shape

      t.timestamps
    end
  end
end
