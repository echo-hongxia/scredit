class AddCategoryIdToProduct1 < ActiveRecord::Migration[5.0]
  def change
    add_column :products,:country_category_id,:integer, default: 2
  end
end
