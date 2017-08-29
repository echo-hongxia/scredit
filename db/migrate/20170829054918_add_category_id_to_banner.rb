class AddCategoryIdToBanner < ActiveRecord::Migration[5.0]
  def change
      add_column :banners, :category_id, :integer, default: 1
  end
end
