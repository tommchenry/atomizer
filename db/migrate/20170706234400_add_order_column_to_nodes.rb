class AddOrderColumnToNodes < ActiveRecord::Migration
  def change
    add_column :nodes, :order, :integer
  end
end
