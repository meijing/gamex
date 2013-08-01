class CreateZoneActs < ActiveRecord::Migration
  def change
    create_table :zone_acts do |t|
      t.references :erogenous_zone
      t.references :act
      t.integer :sex
      t.timestamps
    end
  end
end
