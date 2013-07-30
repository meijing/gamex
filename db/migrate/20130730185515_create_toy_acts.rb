class CreateToyActs < ActiveRecord::Migration
  def change
    create_table :toy_acts do |t|
      t.references :toy
      t.references :act
      t.timestamps
    end
  end
end
