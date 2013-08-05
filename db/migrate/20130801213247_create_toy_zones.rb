class CreateToyZones < ActiveRecord::Migration
  def change
    create_table :toy_zones do |t|
      t.references :toy
      t.references :erogenous_zone
      t.integer :sex
      t.timestamps
    end
  end
end
