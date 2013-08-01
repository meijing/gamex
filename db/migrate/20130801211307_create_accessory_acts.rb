class CreateAccessoryActs < ActiveRecord::Migration
  def change
    create_table :accessory_acts do |t|
      t.references :accesory
      t.references :act
      t.integer :sex
      t.timestamps
    end
  end
end
