class AddCategoryIdToArticle1 < ActiveRecord::Migration[5.0]
  def change
    add_column :articles,:article_category_id,:integer, default: 2
  end
end
