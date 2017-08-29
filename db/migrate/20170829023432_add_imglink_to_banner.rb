class AddImglinkToBanner < ActiveRecord::Migration[5.0]
  def change
    add_column :banners, :img_url, :string
    add_column :banners, :img_link, :string
  end
end
