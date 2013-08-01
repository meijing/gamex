class AddToyActSex < ActiveRecord::Migration
  def up
    add_column :toy_acts, :sex, :integer
  end

  def down
    remove_column :toy_acts, :sex
  end
end
