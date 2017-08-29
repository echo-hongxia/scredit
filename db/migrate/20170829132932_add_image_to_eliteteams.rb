class AddImageToEliteteams < ActiveRecord::Migration[5.0]
  def change
    add_column :eliteteams, :image, :string
  end
end
