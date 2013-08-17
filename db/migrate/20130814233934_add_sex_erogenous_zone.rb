class AddSexErogenousZone < ActiveRecord::Migration
  def up
    add_column :erogenous_zones, :sex, :integer
  end

  def down
    remove_column :erogenous_zones, :sex
  end
end
