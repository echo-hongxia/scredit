class AddProductidToStory < ActiveRecord::Migration[5.0]
  def change
    add_column :stories,:product_id,:integer, default: 1
  end
end
