class RemoveProductIdOfProject < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects,:product_id
  end
end
