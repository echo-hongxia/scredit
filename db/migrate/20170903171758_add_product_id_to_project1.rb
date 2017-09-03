class AddProductIdToProject1 < ActiveRecord::Migration[5.0]
  def change
    add_column :projects,:product_id,:integer, default: 1
  end
end
