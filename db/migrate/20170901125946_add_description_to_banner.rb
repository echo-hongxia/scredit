class AddDescriptionToBanner < ActiveRecord::Migration[5.0]
  def change
    add_column :banners, :description, :text
  end
end
