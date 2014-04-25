class CreateMarkets < ActiveRecord::Migration
  def self.up
    create_table :markets do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.boolean :veg
      t.boolean :gf

      t.timestamps
    end
  end

  def self.down
    drop_table :markets
  end
end
