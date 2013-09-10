class SetAsDefaultZones < ActiveRecord::Migration
  def up
    add_column :erogenous_zones, :default, :integer
  end

  def down
    remove_column :erogenous_zones, :default
  end
end
