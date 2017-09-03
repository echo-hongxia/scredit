class RemoveProductIdOfStory < ActiveRecord::Migration[5.0]
  def change
    remove_column :stories,:product_id
  end
end
