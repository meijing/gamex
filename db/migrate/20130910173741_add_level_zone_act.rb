class AddLevelZoneAct < ActiveRecord::Migration
  def up
    add_column :zone_acts, :high_level, :integer
  end

  def down
    remove_column :zone_acts, :high_level
  end
end
