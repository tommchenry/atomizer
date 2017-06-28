class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :title
      t.boolean :complete?, default: false
      t.integer :parent_id
    end
  end
end
