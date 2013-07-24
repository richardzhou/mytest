class CreateMies < ActiveRecord::Migration
  def self.up
    create_table :mies do |t|
      t.string :title

      t.timestamps
    end
  end
  
  def self.down
	drop_table :products
  end
end
