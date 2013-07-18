class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :description
      t.timestamps
    end
  end
end
