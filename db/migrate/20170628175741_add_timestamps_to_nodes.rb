class AddTimestampsToNodes < ActiveRecord::Migration
  def change
    add_column :nodes, :created_at, :datetime
    add_column :nodes, :updated_at, :datetime
  end
end
