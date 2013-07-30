class CreateErogenousZones < ActiveRecord::Migration
  def change
    create_table :erogenous_zones do |t|
      t.string :name
      t.timestamps
    end
  end
end
