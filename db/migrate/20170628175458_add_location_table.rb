class AddLocationTable < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :title
      t.timestamps
    end
  end
end
