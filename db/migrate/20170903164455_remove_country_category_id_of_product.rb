class RemoveCountryCategoryIdOfProduct < ActiveRecord::Migration[5.0]
  def change
    remove_column :products,:country_category_id
  end
end
