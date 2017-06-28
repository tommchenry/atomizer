class CreateLocationNodes < ActiveRecord::Migration
  def change
    create_table :location_nodes do |t|
      t.references :node
      t.references :location

      t.timestamps
    end
  end
end
