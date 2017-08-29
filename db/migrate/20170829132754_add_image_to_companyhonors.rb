class AddImageToCompanyhonors < ActiveRecord::Migration[5.0]
  def change
      add_column :companyhonors, :image, :string
  end
end
