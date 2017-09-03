class RemoveCategroyIdOfArticle < ActiveRecord::Migration[5.0]
  def change
    remove_column :articles,:article_category_id
  end
end
