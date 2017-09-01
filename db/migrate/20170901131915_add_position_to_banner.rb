class AddPositionToBanner < ActiveRecord::Migration[5.0]
  def change
      add_column :banners, :position, :string
  end
end
