class SetAsDefaultActs < ActiveRecord::Migration
  def up
    add_column :acts, :default, :integer
  end

  def down
    remove_column :acts, :default
  end
end
