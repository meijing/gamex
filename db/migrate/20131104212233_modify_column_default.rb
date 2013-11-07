class ModifyColumnDefault < ActiveRecord::Migration
  def up
    remove_column :acts, :default
    remove_column :erogenous_zones, :default
    add_column :erogenous_zones, :is_default, :integer
    add_column :acts, :is_default, :integer
  end

  def down
    remove_column :erogenous_zones, :is_default
    remove_column :acts, :is_default
    add_column :acts, :default, :integer
    add_column :erogenous_zones, :default, :integer
  end
end
